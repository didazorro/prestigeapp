import 'package:flutter/cupertino.dart';

class LayoutInfoHorizontalWidget extends StatelessWidget {
  const LayoutInfoHorizontalWidget({
    super.key,
    required this.label,
    required this.content,
    this.widthLabel = 100.0,
  });

  final Widget label;
  final Widget content;
  final double widthLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: widthLabel,
          child: label,
        ),
        const SizedBox(width: 8),
        Flexible(child: content),
      ],
    );
  }
}
