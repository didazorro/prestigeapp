import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../menu/maintab_delegate.dart';
import '../../models/app_model.dart';
import '../../models/index.dart'
    show BackDropArguments, CartModel, Product, UserModel;
import '../../modules/analytics/analytics.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../modules/dynamic_layout/index.dart';
import '../../routes/flux_navigate.dart';
import '../../screens/blog/views/blog_list_category.dart';
import '../../screens/index.dart';
import '../../services/index.dart';
import '../../widgets/common/webview.dart';
import '../config.dart';
import '../constants.dart';
import '../events.dart';
import '../tools.dart';
import 'flash.dart';

class NavigateTools {
  static final Map<String, dynamic> _pendingAction = {};

  static Future onTapNavigateOptions({
    required BuildContext context,
    required Map config,
    List<Product>? products,
  }) async {
    /// support to show the product detail
    if (config.hasProduct) {
      unawaited(
        FlashHelper.message(
          context,
          message: S.of(context).loading,
          duration: const Duration(seconds: 1),
        ),
      );

      /// Prevent users from tapping multiple times.
      if (_pendingAction[config.product.toString()] == true) {
        return;
      }

      _pendingAction[config.product.toString()] = true;

      /// for pre-load the product detail
      final service = Services();
      var product = await service.api.getProduct(config.product.toString());

      _pendingAction.remove(config.product.toString());

      if (product == null || product.isEmptyProduct()) {
        return;
      }

      return FluxNavigate.pushNamed(
        RouteList.productDetail,
        arguments: product,
        context: context,
      );
    }
    if (config.hasTab) {
      return MainTabControlDelegate.getInstance().changeTab(config.tab);
    }
    if (config.hasTabNumber) {
      final index = (Helper.formatInt(config.tabNumber, 1) ?? 1) - 1;
      var appModel = Provider.of<AppModel>(context, listen: false);
      final userModel = Provider.of<UserModel>(context, listen: false);
      var tabData = appModel.appConfig?.tabBar[index];

      if (tabData != null) {
        var routeData;
        if (['chat-gpt', 'image-generate', 'text-generate']
            .contains(tabData.layout)) {
          routeData = {
            'identifier': userModel.user?.email,
            'loginCallback': () async {
              await FluxNavigate.pushNamed(
                RouteList.login,
                forceRootNavigator: true,
                context: context,
              );
              final userModel = Provider.of<UserModel>(context, listen: false);
              return userModel.user?.email;
            },
          };
        }
        if (!tabData.visible) {
          return FluxNavigate.pushNamed(
            RouteList.pageTab,
            arguments: routeData ?? tabData,
            context: context,
          );
        }
        if (tabData.isFullscreen) {
          return FluxNavigate.pushNamed(
            tabData.layout.toString(),
            arguments: routeData ?? tabData,
            forceRootNavigator: true,
            context: context,
          );
        }
      }
      return MainTabControlDelegate.getInstance().tabAnimateTo(
        index,
      );
    }
    if (config.hasScreen) {
      var tabData = TabBarMenuConfig(jsonData: {});
      var screen = config.screen.toString();
      var routeData;
      var appModel = Provider.of<AppModel>(context, listen: false);
      tabData = appModel.appConfig?.tabBar
              .firstWhereOrNull((element) => element.layout == screen) ??
          tabData;
      final userModel = Provider.of<UserModel>(context, listen: false);

      if (['chat-gpt', 'image-generate', 'text-generate']
          .contains(tabData.layout)) {
        routeData = {
          'identifier': userModel.user?.email,
          'loginCallback': () async {
            await FluxNavigate.pushNamed(
              RouteList.login,
              forceRootNavigator: true,
              context: context,
            );
            final userModel = Provider.of<UserModel>(context, listen: false);
            return userModel.user?.email;
          },
        };
      } else if (screen == 'orders') {
        if (!userModel.loggedIn) {
          await navigateToLogin(context);
        }

        final user = context.read<UserModel>().user;

        if (user == null) {
          return;
        }

        routeData = user;
      }

      if (config.isFullscreen) {
        return FluxNavigate.pushNamed(
          screen,
          arguments: routeData ?? tabData,
          context: context,
        );
      }

      return Navigator.of(context).pushNamed(
        screen,
        arguments: routeData ?? tabData,
      );
    }

    /// Launch the URL from external
    if (config.hasUrlLaunch) {
      await Tools.launchURL(
        config.urlLaunch,
        mode: LaunchMode.externalApplication,
      );
      return;
    }

    /// support to show blog detail
    if (config.hasBlog) {
      final id = config.blog.toString();
      Analytics.triggerTapBlog(Blog(id: id));
      return FluxNavigate.pushNamed(
        RouteList.detailBlog,
        arguments: BlogDetailArguments(id: id),
        context: context,
      );
    }

    /// support to show blog category
    if (config.hasBlogCategory) {
      return Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>
              BlogListCategory(id: config.blogCategory.toString()),
          fullscreenDialog: true,
        ),
      );
    }

    if (config.hasCoupon) {
      return Navigator.of(context).push(
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => CouponList(
            couponCode: config.coupon.toString(),
            onSelect: (String couponCode) {
              UserBox().savedCoupon = couponCode;
              Provider.of<CartModel>(context, listen: false).loadSavedCoupon();

              Tools.showSnackBar(ScaffoldMessenger.of(context),
                  S.of(context).couponHasBeenSavedSuccessfully);
            },
          ),
        ),
      );
    }

    /// Navigate to vendor store on Banner Image
    if (config.hasVendor) {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              Services().widget.renderVendorScreen(config.vendor),
        ),
      );
      return;
    }

    /// support to show the post detail
    if (config.hasUrl) {
      String url = config.url;
      if (ServerConfig().isWooType || ServerConfig().isWordPress) {
        final cookie =
            Provider.of<UserModel>(context, listen: false).user?.cookie;
        url = url.addWooCookieToUrl(cookie);
      }

      return FluxNavigate.push(
        MaterialPageRoute(
          builder: (context) => WebView(
            url: url,
            enableBackward: config.enableBackward,
            enableForward: config.enableForward,
            enableClose: config.enableClose,
            title: config.title,
          ),
        ),
        context: context,
      );
    } else {
      /// For static image
      if ((config.hasCategory == false ||
              config.category == kEmptyCategoryID) &&
          config.hasTag == false &&
          (products?.isEmpty ?? true) &&
          config.hasLocation == false &&
          config.hasAdvancedParams == false) {
        return;
      }

      final category = config.category;
      final showSubcategory = config.isShowSubcategory;

      if (category != null && showSubcategory) {
        unawaited(FluxNavigate.pushNamed(
          RouteList.subCategories,
          arguments: SubcategoryArguments(parentId: category.toString()),
          context: context,
        ));
        return;
      }

      /// Default navigate to show the list products
      await FluxNavigate.pushNamed(
        RouteList.backdrop,
        arguments: BackDropArguments(
          config: config,
          data: products,
        ),
        context: context,
      );
    }
  }

  static void onTapOpenDrawerMenu(BuildContext context) {
    if (Layout.isDisplayTablet(context)) {
      eventBus.fire(const EventSwitchStateCustomDrawer());
    } else if (isMobile) {
      eventBus.fire(const EventDrawerSettings());
      eventBus.fire(const EventOpenNativeDrawer());
    }
  }

  static void navigateHome(BuildContext context) {
    navigateToRootTab(context, RouteList.home);
  }

  static void navigateToDefaultTab(BuildContext context) {
    Navigator.popUntil(context, (route) => route.isFirst);
    MainTabControlDelegate.getInstance().changeToDefaultTab();
  }

  static void navigateToRootTab(BuildContext context, String name) {
    Navigator.popUntil(context, (route) => route.isFirst);
    MainTabControlDelegate.getInstance().changeTab(name);
  }

  static Future<void> navigateToLogin(
    BuildContext context, {
    bool replacement = false,
  }) async {
    if (ServerConfig().isSupportAuthWebView) {
      await _getFluxNavigate(
        routeName: RouteList.loginWithWebview,
        replacement: replacement,
        context: context,
      );
      return;
    }

    if (kLoginSetting.smsLoginAsDefault) {
      await navigateToLoginSms(context, replacement: replacement);
      return;
    }
    await _getFluxNavigate(
      routeName: RouteList.login,
      replacement: replacement,
      context: context,
    );
  }

  static Future<void> navigateToLoginSms(
    BuildContext context, {
    bool replacement = false,
  }) async {
    if (kAdvanceConfig.enableDigitsMobileLogin) {
      await _getFluxNavigate(
        routeName: RouteList.digitsMobileLogin,
        replacement: replacement,
        context: context,
      );
      return;
    }
    await _getFluxNavigate(
      routeName: RouteList.loginSMS,
      replacement: replacement,
      context: context,
    );
  }

  static Future<Object?> _getFluxNavigate({
    required BuildContext context,
    required String routeName,
    required bool replacement,
  }) {
    if (replacement) {
      return FluxNavigate.pushReplacementNamed(
        routeName,
        forceRootNavigator: true,
        context: context,
      );
    }
    return FluxNavigate.pushNamed(
      routeName,
      forceRootNavigator: true,
      context: context,
    );
  }

  static void navigateAfterLogin(user, context) {
    eventBus.fire(const EventLoggedIn());
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('${S.of(context).welcome} ${user.name} !'),
    ));

    if (kLoginSetting.isRequiredLogin) {
      Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
      return;
    }

    var routeFound = false;
    var routeNames = [RouteList.dashboard, RouteList.productDetail];
    Navigator.popUntil(context, (route) {
      if (routeNames
          .any((element) => route.settings.name?.contains(element) ?? false)) {
        routeFound = true;
      }
      return routeFound || route.isFirst;
    });

    if (!routeFound) {
      Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
    }
  }

  static void navigateRegister(context, {bool replacement = false}) {
    if (ServerConfig().isSupportAuthWebView) {
      _getFluxNavigate(
        routeName: RouteList.signUpWithWebview,
        replacement: replacement,
        context: context,
      );
    } else if (kAdvanceConfig.enableMembershipUltimate) {
      Navigator.of(context).pushNamed(RouteList.memberShipUltimatePlans);
    } else if (kAdvanceConfig.enableWooCommerceWholesalePrices &&
        ServerConfig().isWooPluginSupported) {
      Navigator.of(context).pushNamed(RouteList.wholesaleSignUp);
    } else if (kAdvanceConfig.b2bKingConfig.enabled &&
        ServerConfig().isWooPluginSupported) {
      Navigator.of(context).pushNamed(RouteList.b2bkingSignUp);
    } else if (kAdvanceConfig.enablePaidMembershipPro) {
      Navigator.of(context).pushNamed(RouteList.paidMemberShipProPlans);
    } else if (kAdvanceConfig.enableDigitsMobileLogin &&
        ServerConfig().isWooPluginSupported) {
      Navigator.of(context).pushNamed(RouteList.digitsMobileLoginSignUp);
    } else {
      if (kLoginSetting.smsLoginAsDefault) {
        navigateToLoginSms(context, replacement: replacement);
        return;
      }
      Navigator.of(context).pushNamed(RouteList.register);
    }
  }

  static void goBackLogin(BuildContext context) {
    var routeFound = false;
    var routeNames = [RouteList.login];

    Navigator.popUntil(context, (route) {
      if (routeNames
          .any((element) => route.settings.name?.contains(element) ?? false)) {
        routeFound = true;
      }
      return routeFound || route.isFirst;
    });

    if (!routeFound) {
      Navigator.of(context).pushReplacementNamed(RouteList.login);
    }
  }
}

extension _ExtensionNavigatorToolConfig on Map {
  ///
  dynamic get category => this['category'];
  dynamic get url => this['url'];
  dynamic get vendor => this['vendor'];
  dynamic get coupon => this['coupon'];
  dynamic get blogCategory => this['blog_category'];
  dynamic get blog => this['blog'];
  dynamic get urlLaunch => this['url_launch'];
  dynamic get screen => this['screen'];
  dynamic get tabNumber => this['tab_number'];
  dynamic get tab => this['tab'];
  dynamic get product => this['product'];
  dynamic get tag => this['tag'];
  dynamic get location => this['location'];
  dynamic get advancedParams => this['advancedParams'];

  ///
  bool get hasLocation => location != null;
  bool get hasTag => tag != null;
  bool get hasUrl => url != null;
  bool get hasVendor => vendor != null;
  bool get hasCoupon => coupon != null;
  bool get hasBlogCategory => blogCategory != null;
  bool get hasBlog => blog != null;
  bool get hasUrlLaunch => urlLaunch != null;
  bool get hasScreen => screen != null;
  bool get hasTabNumber => tabNumber != null;
  bool get hasTab => tab != null;
  bool get hasProduct => product != null;
  bool get hasCategory => category != null;
  bool get hasAdvancedParams =>
      advancedParams != null &&
      advancedParams is Map &&
      advancedParams.isNotEmpty;

  ///
  bool get isFullscreen => bool.tryParse('${this['fullscreen']}') ?? false;
  bool get isShowSubcategory =>
      bool.tryParse('${this['showSubcategory']}') ?? false;
  bool get enableBackward =>
      bool.tryParse('${this['enableBackward']}') ?? false;
  bool get enableForward => bool.tryParse('${this['enableForward']}') ?? false;
  bool get enableClose => bool.tryParse('${this['enableClose']}') ?? true;
  String? get title => this['title'] is String ? this['title'] : null;
}
