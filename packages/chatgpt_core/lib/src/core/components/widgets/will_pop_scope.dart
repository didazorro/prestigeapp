import 'package:flutter/material.dart';

class WillPopScopeWidget extends StatelessWidget {
  const WillPopScopeWidget({
    super.key,
    this.canPop = false,
    required this.onWillPop,
    required this.child,
    this.allowExitApp = true,
  });

  final bool canPop;
  final Future<bool?> Function() onWillPop;
  final Widget child;
  final bool allowExitApp;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      child: child,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }

        final navigator = Navigator.of(context);
        final modalRoute = ModalRoute.of(context);
        final canPopScreen = modalRoute != null && modalRoute.canPop;
        final result = await onWillPop();

        if (true == result) {
          if (allowExitApp || canPopScreen) {
            navigator.pop();
          }
        }
      },
    );
  }
}
