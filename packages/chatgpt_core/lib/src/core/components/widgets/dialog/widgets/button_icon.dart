import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color color;
  final Function()? onTap;

  const ButtonIcon({
    super.key,
    this.size = 24,
    this.icon = Icons.info,
    this.color = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          border: Border.all(
            color: color,
            width: 1.5,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          color: color,
          size: size / 2,
        ),
      ),
    );
  }
}
