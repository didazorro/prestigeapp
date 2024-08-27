import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UniversalPlatform.isAndroid
          ? const CircularProgressIndicator()
          : const CupertinoActivityIndicator(),
    );
  }
}

class LoadingWidgetColor extends StatelessWidget {
  final Color? color;

  const LoadingWidgetColor({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UniversalPlatform.isAndroid
          ? CircularProgressIndicator(color: color)
          : CupertinoActivityIndicator(color: color),
    );
  }
}
