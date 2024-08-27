import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../models/entities/product_addons.dart';

class HeaderItem extends StatelessWidget {
  final ProductAddons item;
  const HeaderItem(this.item);

  String? get description {
    if (item.descriptionEnable ?? false) {
      return null;
    }
    return item.description;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight.withOpacity(0.7),
        borderRadius: BorderRadius.circular(6),
      ),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.name}',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          if (description?.isNotEmpty ?? false) ...[
            const SizedBox(height: 5),
            Text(
              '${item.description}',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: kGrey400,
                  ),
            ),
          ]
        ],
      ),
    );
  }
}
