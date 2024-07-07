import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/events.dart';
import '../../../common/extensions/extensions.dart';
import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/user.dart';
import '../../../models/user_model.dart';
import '../../../screens/settings/notification_screen.dart';
import '../appbar_web.dart';
import '../web_layout_mixin.dart';
import 'button_language.dart';
import 'follow_social_widget.dart';

class HeaderActionWeb extends StatefulWidget {
  const HeaderActionWeb({super.key});

  @override
  State<HeaderActionWeb> createState() => _HeaderActionWebState();
}

class _HeaderActionWebState extends State<HeaderActionWeb> with WebLayoutMixin {
  Color get _backgroundColor => Theme.of(context).primaryColor;
  User? get user => Provider.of<UserModel>(context, listen: false).user;
  AppModel get _appModel => context.read<AppModel>();

  void _onTapNotify() {
    if (user != null) {
      showDialog(
        context: context,
        builder: (_) => Center(
          child: SizedBox(
            width: 400,
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: NotificationScreen(),
          ),
        ),
      );
    }
  }

  void _onTapSupport() => onTapOpenUrl(context,
      _appModel.appConfig?.settings.support ?? kAdvanceConfig.supportPageUrl);

  void _onTapSignout() {
    Provider.of<CartModel>(context, listen: false).clearAddress();
    Provider.of<UserModel>(context, listen: false).logout();
    eventBus.fire(const EventExpiredCookie());
    Navigator.of(context).pushNamed(RouteList.home);
  }

  void _onTapSignIn() => Navigator.of(context).pushNamed(RouteList.login);

  void _onTapDownloadPage() => onTapOpenUrl(context,
      _appModel.appConfig?.settings.downloadApp ?? kAdvanceConfig.faqPageUrl);

  @override
  Widget build(BuildContext context) {
    const sub = 60;
    return Container(
      color: _backgroundColor
          .withBlue(
            _backgroundColor.blue + (_backgroundColor.blue > sub ? -sub : 0),
          )
          .withGreen(
            _backgroundColor.green + (_backgroundColor.green > sub ? -sub : 0),
          )
          .withRed(
            _backgroundColor.red + (_backgroundColor.red > sub ? -sub : 0),
          ),
      child: Consumer<UserModel>(
        builder: (_, __, ___) {
          return SizedBox(
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _HeaderButtonAction(
                    S.of(context).downloadApp,
                    onTap: _onTapDownloadPage,
                  ),
                  _renderSpace(),
                  FollowSocialWidget(
                    color: _backgroundColor.getColorBasedOnBackground,
                    title: Text(
                      S.of(context).connect,
                      style: kStyleTextInAppBarWeb.copyWith(
                          color: _backgroundColor.getColorBasedOnBackground),
                    ),
                    onTap: (p0) => onTapOpenUrl(context, p0),
                  ),
                  _renderSpace(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonChooseLanguage(
                      style: kStyleTextInAppBarWeb.copyWith(
                        color: _backgroundColor.getColorBasedOnBackground,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (user != null)
                    _HeaderButtonAction(
                      S.of(context).notifications,
                      icon: CupertinoIcons.bell,
                      onTap: _onTapNotify,
                    ),
                  const SizedBox(width: 8),
                  _HeaderButtonAction(
                    S.of(context).support,
                    icon: CupertinoIcons.question_circle,
                    onTap: _onTapSupport,
                  ),
                  const SizedBox(width: 8),
                  ..._renderAuth(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _renderSpace() => VerticalDivider(
        color: Theme.of(context).colorScheme.surface,
        indent: 12,
        endIndent: 12,
        thickness: 1,
      );

  List<Widget> _renderAuth(BuildContext context) {
    final loggedIn = Provider.of<UserModel>(context).loggedIn;
    final user = Provider.of<UserModel>(context).user;

    return [
      if (loggedIn)
        _HeaderButtonAction(
          S.of(context).logout,
          onTap: _onTapSignout,
          iconWidget: CircleAvatar(
            backgroundImage:
                NetworkImage((user?.picture ?? kDefaultImage).addWebProxy()),
            radius: 12,
          ),
        )
      else ...[
        _HeaderButtonAction(
          S.of(context).signIn,
          onTap: _onTapSignIn,
          iconWidget: const CircleAvatar(
            radius: 12,
            child: Icon(Icons.person),
          ),
        ),
      ]
    ];
  }
}

class _HeaderButtonAction extends StatelessWidget {
  const _HeaderButtonAction(
    this.title, {
    this.onTap,
    this.icon,
    this.iconWidget,
    // ignore: unused_element
    this.backgroundColor,
  }) : assert(
          (icon == null && iconWidget == null) ||
              (icon != null) ^ (iconWidget != null),
          'icon or iconWidget must be not null or both null',
        );

  final String title;
  final Function()? onTap;
  final IconData? icon;
  final Widget? iconWidget;
  final Color? backgroundColor;

  Padding iconWithPadding(Widget icon) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final background = backgroundColor ?? Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: onTap,
        child: Row(
          children: [
            if (icon != null)
              iconWithPadding(Icon(
                icon,
                size: 20,
                color: background.getColorBasedOnBackground,
              )),
            if (iconWidget != null) iconWithPadding(iconWidget!),
            Text(
              title,
              style: kStyleTextInAppBarWeb.copyWith(
                color: background.getColorBasedOnBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
