import 'package:flutter/material.dart';
import '../../common/config.dart';

class LoadingBody extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Color backgroundColor;

  const LoadingBody({
    super.key,
    this.backgroundColor = Colors.black45,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isLoading,
          child: Center(
            child: Container(
              color: backgroundColor,
              child: kLoadingWidget(context),
            ),
          ),
        )
      ],
    );
  }
}
