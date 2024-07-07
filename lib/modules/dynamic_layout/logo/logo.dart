import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspireui/icons/icon_picker.dart' deferred as defer_icon;
import 'package:inspireui/inspireui.dart' show DeferredWidget;
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../models/app_model.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/multi_site/multi_site_mixin.dart';
import '../config/logo_config.dart';

class LogoIcon extends StatelessWidget {
  final LogoConfig config;
  final Function onTap;
  final MenuIcon? menuIcon;
  final EdgeInsetsDirectional? padding;
  final bool showNumber;
  final int number;

  const LogoIcon({
    super.key,
    required this.config,
    required this.onTap,
    this.menuIcon,
    this.showNumber = false,
    this.number = 0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final boxSize = config.iconSize + config.iconSpreadRadius;
    Widget widget = InkWell(
      onTap: () => onTap.call(),
      child: Container(
        width: boxSize,
        height: boxSize,
        decoration: BoxDecoration(
          color: config.iconBackground ??
              Theme.of(context)
                  .colorScheme
                  .surface
                  .withOpacity(config.iconOpacity),
          borderRadius: BorderRadius.circular(config.iconRadius),
        ),
        child: menuIcon != null
            ? DeferredWidget(
                defer_icon.loadLibrary,
                () => Icon(
                  defer_icon.iconPicker(
                    menuIcon!.name!,
                    menuIcon!.fontFamily ?? 'CupertinoIcons',
                  ),
                  color: config.iconColor ??
                      Theme.of(context).colorScheme.secondary.withOpacity(0.9),
                  size: config.iconSize,
                ),
              )
            : Icon(
                Icons.blur_on,
                color: config.iconColor ??
                    Theme.of(context).colorScheme.secondary.withOpacity(0.9),
                size: config.iconSize,
              ),
      ),
    );
    if (showNumber) {
      final boxSizeWithNumber = boxSize + 6;
      widget = SizedBox(
        width: boxSizeWithNumber,
        height: boxSizeWithNumber,
        child: Stack(
          children: [
            Center(child: widget),
            if (number > 0)
              PositionedDirectional(
                end: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      );
    }

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: widget,
    );
  }
}

class Logo extends StatelessWidget with MultiSiteMixin {
  final Function() onSearch;
  final Function() onCheckout;
  final Function() onTapDrawerMenu;
  final Function() onTapNotifications;
  final String? logo;
  final LogoConfig config;
  final int totalCart;
  final int notificationCount;

  const Logo({
    super.key,
    required this.config,
    required this.onSearch,
    required this.onCheckout,
    required this.onTapDrawerMenu,
    required this.onTapNotifications,
    this.logo,
    this.totalCart = 0,
    this.notificationCount = 0,
  });

  Widget renderLogo() {
    final logoSize = config.logoSize;

    if (config.image != null) {
      if (config.image!.contains('http')) {
        return SizedBox(
          height: logoSize - 10,
          child: FluxImage(
            imageUrl: config.image!,
            height: logoSize,
            fit: BoxFit.contain,
          ),
        );
      }
      return Image.asset(
        config.image!,
        height: logoSize,
      );
    }

    /// render from config to support dark/light theme
    if (logo != null) {
      return FluxImage(imageUrl: logo!, height: logoSize);
    }

    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    var enableMultiSite = Configurations.multiSiteConfigs?.isNotEmpty ?? false;
    var multiSiteIcon = Provider.of<AppModel>(context).multiSiteConfig?.icon;

    final textConfig = config.textConfig;
    return Container(
      constraints: const BoxConstraints(minHeight: kToolbarHeight),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      color: config.color ??
          Theme.of(context).colorScheme.surface.withOpacity(config.opacity),
      child: Row(
        children: [
          if (config.showMenu ?? false)
            LogoIcon(
              menuIcon: config.menuIcon,
              onTap: onTapDrawerMenu,
              config: config,
            ),
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                if (config.showLogo) Center(child: renderLogo()),
                if (textConfig != null) ...[
                  if (config.showLogo) const SizedBox(width: 5),
                  Expanded(
                    child: Align(
                      alignment: textConfig.alignment,
                      child: Text(
                        textConfig.text,
                        style: TextStyle(
                          fontSize: textConfig.fontSize,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ],
            ),
          ),
          if (config.showSearch)
            LogoIcon(
              menuIcon: config.searchIcon ?? MenuIcon(name: 'search'),
              onTap: onSearch,
              config: config,
            ),
          if (config.showBadgeCart)
            GestureDetector(
              onTap: onCheckout,
              behavior: HitTestBehavior.translucent,
              child: Container(
                margin: const EdgeInsetsDirectional.only(start: 8),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  totalCart.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          if (config.showCart)
            LogoIcon(
              padding: const EdgeInsetsDirectional.only(start: 8),
              menuIcon: config.cartIcon ?? MenuIcon(name: 'bag'),
              onTap: onCheckout,
              config: config,
              showNumber: true,
              number: totalCart,
            ),
          if (config.showNotification)
            LogoIcon(
              padding: const EdgeInsetsDirectional.only(start: 8),
              menuIcon: config.notificationIcon ?? MenuIcon(name: 'bell'),
              onTap: onTapNotifications,
              config: config,
              showNumber: true,
              number: notificationCount,
            ),
          if (enableMultiSite)
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8),
                child: GestureDetector(
                  onTap: () => showMultiSiteSelection(context),
                  child: multiSiteIcon?.isEmpty ?? true
                      ? const Icon(CupertinoIcons.globe)
                      : FluxImage(
                          imageUrl: multiSiteIcon!,
                          width: 25,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          if (!enableMultiSite &&
              !config.showSearch &&
              !config.showCart &&
              !config.showBadgeCart &&
              !config.showNotification)
            const Spacer(),
        ],
      ),
    );
  }
}
