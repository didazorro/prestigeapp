import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/bottom_bar_model.dart';

class DynamicOpacityBottomBarListener extends StatelessWidget {
  const DynamicOpacityBottomBarListener({
    super.key,
    required this.child,
  });

  final Widget child;

  bool _onScrollNotification(BuildContext context, Notification notification) {
    final bottomBarModel = context.read<BottomBarModel>();
    if (notification is ScrollUpdateNotification) {
      final axisDirection = notification.metrics.axisDirection;

      // Because we only want to show the bottom bar when the user scrolls up and down
      if (axisDirection == AxisDirection.right ||
          axisDirection == AxisDirection.left) {
        return false;
      }

      final scrollDelta = notification.scrollDelta ?? 0;

      if (scrollDelta > 2 && notification.metrics.pixels > 30) {
        bottomBarModel.deactiveOpacityAndSlide();
      } else {
        if (scrollDelta < -15) {
          bottomBarModel.activeOpacityAndSlide();
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (Notification notification) =>
          _onScrollNotification(context, notification),
      child: child,
    );
  }
}
