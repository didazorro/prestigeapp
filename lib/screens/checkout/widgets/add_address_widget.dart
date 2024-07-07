import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'choose_address_layout.dart';

class AddAddressWidget extends StatelessWidget {
  const AddAddressWidget({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: ChooseAddressLayout(
        isSelected: false,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, color: Theme.of(context).colorScheme.secondary),
              const SizedBox(width: 8),
              Text(
                S.of(context).addNewAddress,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
