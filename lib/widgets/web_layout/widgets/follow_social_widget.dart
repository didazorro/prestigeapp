import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../common/flex_separated.dart';
import '../../common/flux_image.dart';

class FollowSocialWidget extends StatelessWidget {
  final Widget? title;
  final Function(String)? onTap;
  final Color? color;
  final double sizeIcon;
  final EdgeInsetsGeometry? padding;

  const FollowSocialWidget({
    super.key,
    this.title,
    this.onTap,
    this.color,
    this.sizeIcon = 20.0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final listSocialData = kAdvanceConfig.socialConnectUrls;
    if (listSocialData.isNotEmpty) {
      final listSocialWidget = <Widget>[];

      for (var social in listSocialData) {
        if ((social.name.isNotEmpty) &&
            (social.url.isNotEmpty) &&
            (social.icon.isNotEmpty)) {
          listSocialWidget.add(
            InkWell(
              hoverColor: Colors.transparent,
              child: FluxImage(
                imageUrl: social.icon,
                width: sizeIcon,
                height: sizeIcon,
                color: color,
              ),
              onTap: () => onTap?.call(social.url),
            ),
          );
        }
      }

      return Padding(
        padding: padding ?? const EdgeInsets.all(5.0),
        child: FlexSeparated.row(
          separationSize: 10,
          children: [if (title != null) title!, ...listSocialWidget],
        ),
      );
    }

    return const SizedBox();
  }
}
