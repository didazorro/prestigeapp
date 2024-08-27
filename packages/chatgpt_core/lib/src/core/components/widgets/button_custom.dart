import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Function() press;
  final double? height;
  final double? width;
  final Widget child;
  final Color? color;

  const ButtonCustom({
    super.key,
    required this.press,
    this.height,
    this.width,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.blue[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: child,
      ),
    );
  }
}
