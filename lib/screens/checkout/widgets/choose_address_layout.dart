import 'package:flutter/material.dart';

class ChooseAddressLayout extends StatelessWidget {
  const ChooseAddressLayout({
    super.key,
    required this.isSelected,
    required this.child,
    this.height = 150.0,
  });
  final bool isSelected;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.surface,
      ),
      padding: const EdgeInsets.all(16).copyWith(bottom: 10),
      height: height,
      child: child,
    );
  }
}
