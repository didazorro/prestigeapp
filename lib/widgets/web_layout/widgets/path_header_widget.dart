import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../routes/flux_navigate.dart';

class PathHeaderWidget extends StatelessWidget {
  const PathHeaderWidget({
    super.key,
    required this.items,
    this.homeIsRoot = true,
    this.padding = const EdgeInsets.symmetric(vertical: 15),
  });

  final List<PathHeaderItem> items;
  final bool homeIsRoot;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final stylePath = Theme.of(context).textTheme.labelMedium?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 20 / 14,
        );

    final allItems = [
      if (homeIsRoot)
        PathHeaderItem(
          title: S.of(context).home,
          onTap: () => FluxNavigate.pushNamedAndRemoveUntil(
            RouteList.home,
            (route) => false,
            context: context,
          ),
        ),
      ...items
    ];

    return Padding(
      padding: padding,
      child: Row(
        children: List.generate(
          allItems.length,
          (index) {
            final e = allItems[index];

            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: e.onTap,
              child: Text(
                e.title.toString(),
                style: stylePath?.copyWith(
                    color: index == allItems.length - 1
                        ? Theme.of(context).primaryColor
                        : null),
              ),
            );
          },
        )
            .expand(
              (element) => [
                element,
                Text(
                  '  /  ',
                  style: stylePath,
                ),
              ],
            )
            .toList()
          ..removeLast(),
      ),
    );
  }
}

class PathHeaderItem {
  final String title;
  final void Function()? onTap;

  PathHeaderItem({
    required this.title,
    this.onTap,
  });
}
