import 'package:flutter/material.dart';

import '../../../../services/services.dart';

class SubAttributeItem extends StatelessWidget {
  const SubAttributeItem({
    required this.name,
    required this.isSelected,
    required this.onSelected,
  });

  final String name;
  final bool isSelected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    var primaryBackground = Services().widget.enableProductBackdrop
        ? Colors.white
        : Theme.of(context).primaryColor.withOpacity(0.2);
    var primaryText = Theme.of(context).primaryColor;
    var primaryColorLight = Theme.of(context).primaryColorLight;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: FilterChip(
        selectedColor: primaryBackground,
        backgroundColor: primaryColorLight,
        label: Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: isSelected ? primaryText : null,
                letterSpacing: 1.2,
              ),
        ),
        checkmarkColor: primaryText,
        selected: isSelected,
        onSelected: onSelected,
      ),
    );
  }
}
