import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../common/config.dart';
import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../models/category/category_model.dart';
import '../../models/search_web_model.dart';
import '../../screens/settings/layouts/mixins/setting_action_mixin.dart';
import '../common/flex_separated.dart';
import '../common/flux_image.dart';
import 'appbar_web_control_delegate.dart';
import 'mixins/overlay_mixin.dart';
import 'web_layout_constant.dart';
import 'web_layout_mixin.dart';
import 'widgets/category_menu_widget.dart';
import 'widgets/my_cart_button_web.dart';
import 'widgets/search_suggestion_widget.dart';
import 'widgets/search_textfield_widget.dart';
import 'widgets/under_line_widget.dart';

const kStyleTextInAppBarWeb = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 12,
);

class AppBarWeb extends StatefulWidget {
  final bool isPinAppBar;
  final Map<String, dynamic> config;
  final Widget? searchWidget;
  final Widget Function()? actionBuilder;
  final String? searchText;
  final Function()? onRefresh;

  const AppBarWeb({
    super.key,
    this.isPinAppBar = true,
    this.onRefresh,
    this.config = const {},
    this.searchWidget,
    this.actionBuilder,
    this.searchText,
  });

  @override
  State<AppBarWeb> createState() => _AppBarWebState();
}

class _AppBarWebState extends State<AppBarWeb>
    with
        WebLayoutMixin,
        SettingActionMixin,
        SingleTickerProviderStateMixin,
        OverlayMixin {
  final _globalKey = GlobalKey<_AppBarWebState>();
  final _globalKeySearch = GlobalKey();
  final _textCtrl = TextEditingController();
  final _focusNode = FocusNode();

  late AnimationController _controller;
  late Animation<double> _animation;

  AppModel get _appModel => context.read<AppModel>();
  void _onOpenAboutUS() => onTapOpenUrl(context,
      _appModel.appConfig?.settings.aboutUS ?? kAdvanceConfig.aboutUSPageUrl);

  void _onOpenFAQ() => onTapOpenUrl(
      context, _appModel.appConfig?.settings.fAQ ?? kAdvanceConfig.faqPageUrl);

  void _onOpenBlog() => onTapOpenUrl(context,
      _appModel.appConfig?.settings.news ?? kAdvanceConfig.newsPageUrl);

  void _onTapLogo() => Navigator.of(context).pushNamed(RouteList.home);

  void _submitSearch(String value) {
    _controller.reverse();
    hideOverlay();

    EasyDebounce.debounce('searchWeb', const Duration(milliseconds: 500), () {
      if (AppBarWebControlDelegate.routeName != 'products') {
        Navigator.of(context)
            .pushNamed(RouteList.products, arguments: {'searchText': value});
      } else {
        context.read<SearchWebModel>().search(value);
      }
    });
  }

  void _listenerFocusText() {
    if (_focusNode.hasFocus) {
      _controller.forward().then((value) {
        showOverlay(App.fluxStoreNavigatorKey.currentContext!);
      });
    }
  }

  @override
  bool get showRegionPop => false;

  @override
  double? get offsetLeft => 0.0;

  @override
  double? get offsetRight => 0.0;

  @override
  double? get offsetTop => 20;

  @override
  Widget get bodyOverlay {
    if (_globalKeySearch.currentContext == null) {
      return const SizedBox();
    }

    final box =
        _globalKeySearch.currentContext!.findRenderObject() as RenderBox;
    final sizeWidget = box.size;
    final posWidget = box.localToGlobal(Offset.zero);

    return SearchSuggestionWidget(
      posWidget: posWidget.copyWith(
        dx: posWidget.dx + (context.isRtl ? sizeWidget.width : 0.0),
      ),
      onSubmit: (p0) {
        _submitSearch(p0);
      },
      searchFieldController: _textCtrl,
      onPop: () {
        _controller.reverse();
        hideOverlay();
      },
    );
  }

  @override
  GlobalKey<State<StatefulWidget>>? get globalKeyOverlay => _globalKey;

  @override
  void hideOverlay({String? debugLabel}) {
    super.hideOverlay(debugLabel: debugLabel);
    _focusNode.unfocus();
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_listenerFocusText);
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CategoryModel>(context, listen: false).getCategories();
      if (widget.searchText?.isNotEmpty ?? false) {
        _textCtrl.text = widget.searchText!;
      }
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_listenerFocusText);
    _controller.dispose();
    _textCtrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorAppBar = Theme.of(context).appBarTheme.backgroundColor ??
        Theme.of(context).colorScheme.surface;

    final appModel = Provider.of<AppModel>(context, listen: false);

    final themeConfig = appModel.themeConfig;

    final style = Theme.of(context)
        .textTheme
        .labelLarge
        ?.copyWith(fontWeight: FontWeight.w700);

    return Container(
      color: colorAppBar,
      key: _globalKey,
      child: Center(
        child: Container(
          height: WebLayoutConstant.kHeightAppBarWeb,
          color: colorAppBar,
          child: SizedBox(
            height: WebLayoutConstant.kHeightContentAppBar,
            child: LayoutBuilder(
              builder: (_, constrain) {
                final maxWidth = constrain.maxWidth - 100.0;
                checkSizeToHideOverlay();

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: AnimatedBuilder(
                    animation: _animation,
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onTap: _onTapLogo,
                      child: SizedBox(
                        height: WebLayoutConstant.kHeightContentAppBar,
                        width: maxWidth * 0.1,
                        child: FluxImage(
                          imageUrl: themeConfig.logo,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    builder: (context, child) {
                      return Row(
                        children: [
                          child!,
                          const SizedBox(width: 24),
                          if (widget.actionBuilder != null)
                            Expanded(child: widget.actionBuilder!())
                          else ...[
                            Opacity(
                              opacity: 1 - _animation.value,
                              child: SizedBox(
                                width: maxWidth * 0.45 * (1 - _animation.value),
                                height: WebLayoutConstant.kHeightContentAppBar,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const NeverScrollableScrollPhysics(),
                                  child: FlexSeparated.row(
                                    separationSize: 24,
                                    children: [
                                      const CategoriesOverlayButton(),
                                      UnderlineWidget(
                                        onTap: _onOpenAboutUS,
                                        child: Text(
                                          S.of(context).aboutUs,
                                          style: style,
                                        ),
                                      ),
                                      UnderlineWidget(
                                        onTap: _onOpenBlog,
                                        child: Text(
                                          S.of(context).blog,
                                          style: style,
                                        ),
                                      ),
                                      UnderlineWidget(
                                        onTap: _onOpenFAQ,
                                        child: Text(
                                          'FAQ',
                                          style: style,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: maxWidth * 0.15 * _animation.value,
                              height: 1,
                            ),
                            SearchTextFieldWidget(
                              key: _globalKeySearch,
                              width: maxWidth * 0.2 +
                                  (maxWidth * 0.35 * _animation.value),
                              controller: _textCtrl,
                              focusNode: _focusNode,
                              height: WebLayoutConstant.kHeightButtonAction,
                              onFieldSubmitted: _submitSearch,
                            ),
                            const SizedBox(width: 16),
                            Opacity(
                              opacity: 1 - _animation.value,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.of(context)
                                          .pushNamed(RouteList.wishlist),
                                      behavior: HitTestBehavior.translucent,
                                      child: Container(
                                        height: WebLayoutConstant
                                            .kHeightButtonAction,
                                        width: WebLayoutConstant
                                            .kHeightButtonAction,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey[300]!,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              WebLayoutConstant
                                                  .kHeightButtonAction),
                                        ),
                                        padding: const EdgeInsets.all(3),
                                        child: const Icon(
                                          CupertinoIcons.heart,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    const MyCartButtonWebWidget(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
