import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/category/category_model.dart';
import '../../../models/entities/back_drop_arguments.dart';
import '../../../models/entities/category.dart';
import '../../../routes/flux_navigate.dart';
import '../mixins/overlay_mixin.dart';
import 'under_line_widget.dart';

const _kMaxLengthChildCategory = 4;

class CategoriesOverlayButton extends StatefulWidget {
  const CategoriesOverlayButton({super.key});

  @override
  State<CategoriesOverlayButton> createState() =>
      _CategoriesOverlayButtonState();
}

class _CategoriesOverlayButtonState extends State<CategoriesOverlayButton>
    with OverlayMixin {
  final _globalKey = GlobalKey<_CategoriesOverlayButtonState>();

  @override
  GlobalKey<State<StatefulWidget>>? get globalKeyOverlay => _globalKey;

  @override
  double? get heightDialog => 200;

  @override
  double? get offsetTop => -5;

  @override
  double? get positionStart => 0;

  @override
  double? get positionEnd => 0;

  @override
  double? get widthDialog => MediaQuery.sizeOf(context).width;

  @override
  Widget build(BuildContext context) {
    return UnderlineWidget(
      key: _globalKey,
      onTap: showOverlay,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).categories,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const Icon(Icons.keyboard_arrow_down_rounded)
        ],
      ),
    );
  }

  @override
  Widget get bodyOverlay {
    if (_globalKey.currentContext == null) {
      return const SizedBox();
    }

    final box = _globalKey.currentContext!.findRenderObject() as RenderBox;

    final posWidget = box.localToGlobal(Offset.zero);
    final isRTL = Tools.isRTL(context);
    final width = MediaQuery.sizeOf(context).width;

    return Material(
      child: Container(
        width: width,
        height: 340,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(1, 4), // changes position of shadow
            ),
          ],
          color: Theme.of(context).colorScheme.surface,
        ),
        padding: EdgeInsetsDirectional.only(
            start: isRTL ? (width - posWidget.dx + 185) : posWidget.dx),
        child: CategoryMenuWidget(
          onTapItem: hideOverlay,
        ),
      ),
    );
  }
}

class CategoryMenuWidget extends StatefulWidget {
  const CategoryMenuWidget({super.key, required this.onTapItem});

  final void Function() onTapItem;
  @override
  State<CategoryMenuWidget> createState() => _CategoryMenuWidgetState();
}

class _CategoryMenuWidgetState extends State<CategoryMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return buildListCategory();
  }

  void _navigateToBackDrop(Category currentCtg) {
    widget.onTapItem();

    FluxNavigate.pushNamed(
      RouteList.backdrop,
      arguments: BackDropArguments(
        cateId: currentCtg.id,
        cateName: currentCtg.name,
      ),
      context: context,
    );
  }

  Widget buildListCategory() {
    var textStyle = const TextStyle(fontSize: 16);
    final textStyleCategory = textStyle.copyWith(
      color: Theme.of(context).colorScheme.surface.getColorBasedOnBackground,
    );
    return Selector<CategoryModel, List<Category>?>(
      shouldRebuild: (previous, next) {
        return previous != next;
      },
      selector: (context, provider) => provider.categories,
      builder: (context, categories, child) {
        var widgets = <Widget>[];

        if (categories != null) {
          categories.removeWhere((element) =>
              element.name?.toLowerCase() == 'UNCATEGORIZED'.toLowerCase());

          var list = categories
              .where((item) => item.isRoot)
              .toList()
              .reversed
              .toList();

          for (var i = 0; i < list.length; i++) {
            final currentCategory = list[i];
            final childCategories = categories
                .where((o) => o.parent == currentCategory.id)
                .toList();
            final categoryName = currentCategory.name?.toUpperCase() ?? '';

            widgets.add(Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                InkWell(
                  onTap: () => _navigateToBackDrop(currentCategory),
                  child: Text(
                    categoryName,
                    style:
                        textStyleCategory.copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(height: 5),
                if (childCategories.isNotEmpty)
                  ...List.generate(
                    min(childCategories.length, _kMaxLengthChildCategory),
                    (index) {
                      final item = childCategories[index];

                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: InkWell(
                          onTap: () => _navigateToBackDrop(item),
                          child: Text(
                            item.displayName,
                            style: textStyleCategory.copyWith(fontSize: 14),
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ));
          }
        }
        final checkLength = (widgets.length ~/ 2);
        var leng = widgets.length ~/ 2;

        if (checkLength < (widgets.length / 2)) {
          leng += 1;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: List.generate(leng, (index) {
              final indexFirst = index * 2;
              final indexLast = index * 2 + 1;

              return SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (indexFirst < widgets.length) widgets[indexFirst],
                    if (indexLast < widgets.length) ...[
                      const SizedBox(
                        height: 20,
                      ),
                      widgets[indexLast]
                    ],
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
