import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../../../common/config.dart';
import '../../../../common/config/models/general_setting_item.dart';
import '../../../../common/constants.dart';
import '../../../../common/extensions/extensions.dart';
import '../../../../common/tools/tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/app_model.dart';
import '../../../../models/entities/user.dart';
import '../../../../modules/dynamic_layout/helper/helper.dart';
import '../../../../routes/flux_navigate.dart';
import '../../../../services/service_config.dart';
import '../../../../widgets/common/webview.dart';
import '../../../posts/post_screen.dart';

mixin SettingActionMixin {
  bool _isDesktop(BuildContext context) => Layout.isDisplayDesktop(context);

  void onTapOpenPrivacy(BuildContext context, {GeneralSettingItem? privacy}) {
    final appConfig = Provider.of<AppModel>(context, listen: false).appConfig;

    final pageId = privacy?.pageId ??
        (privacy?.webUrl == null
            ? appConfig?.privacyPoliciesPageId ??
                kAdvanceConfig.privacyPoliciesPageId
            : null);

    String? pageUrl = privacy?.webUrl ??
        appConfig?.privacyPoliciesPageUrl ??
        kAdvanceConfig.privacyPoliciesPageUrl;

    if (kIsWeb || _isDesktop(context)) {
      Tools.launchURL(pageUrl);
      return;
    }

    if (pageId != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostScreen(
              pageId: pageId,
              pageTitle: S.of(context).agreeWithPrivacy,
            ),
          ));
      return;
    }
    if (pageUrl.isNotEmpty) {
      if (ServerConfig().isWooType || ServerConfig().isWordPress) {
        ///Display multiple languages WebView
        var locale = Provider.of<AppModel>(context, listen: false).langCode;
        pageUrl = pageUrl.addUrlQuery('lang=$locale');
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebView(
            url: pageUrl,
            title: S.of(context).agreeWithPrivacy,
          ),
        ),
      );
    }
  }

  void openAboutUS(BuildContext context, {GeneralSettingItem? about}) {
    final aboutUrl = about?.webUrl ?? SettingConstants.aboutUsUrl;

    if (kIsWeb || UniversalPlatform.isMacOS || UniversalPlatform.isWindows) {
      Tools.launchURL(aboutUrl);
      return;
    }

    final pageRoute = MaterialPageRoute(
      builder: (context) => WebView(
        url: aboutUrl,
        // title: S.of(context).aboutUs,
      ),
    );

    if (_isDesktop(context)) {
      Navigator.of(context).push(pageRoute);
      return;
    }

    FluxNavigate.push(
      pageRoute,
      context: context,
    );
  }

  void openProfile(BuildContext context) {
    if (_isDesktop(context)) {
      Navigator.of(context).pushNamed(RouteList.updateUser);
      return;
    }

    FluxNavigate.pushNamed(
      RouteList.updateUser,
      context: context,
    );
  }

  void openMyOrder(BuildContext context, User user) {
    if (_isDesktop(context)) {
      Navigator.of(context).pushNamed(
        RouteList.orders,
        arguments: user,
      );
      return;
    }

    FluxNavigate.pushNamed(
      RouteList.orders,
      arguments: user,
      context: context,
    );
    return;
  }
}
