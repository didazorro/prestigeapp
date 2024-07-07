import 'package:flutter/material.dart';

import '../../../models/entities/branch.dart';

class BranchItem extends StatelessWidget {
  final Branch item;
  final void Function()? onTap;
  final bool isSelected;
  const BranchItem(
    this.item, {
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
          color: isSelected
              ? Theme.of(context).colorScheme.secondary.withOpacity(0.1)
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item.name),
            if (isSelected) ...[
              const SizedBox(width: 5),
              Icon(
                Icons.done,
                size: 12,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
