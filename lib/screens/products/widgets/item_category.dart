import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../common/tools/image_tools.dart';
import '../../../widgets/common/index.dart' show FluxImage;

class ItemCategory extends StatelessWidget {
  final String? categoryId;
  final String categoryName;
  final String? categoryImage;
  final List<String>? selectedCategories;
  final Function(String?)? onTap;

  const ItemCategory({
    super.key,
    this.categoryId,
    required this.categoryName,
    this.categoryImage,
    this.selectedCategories,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var highlightColor = (selectedCategories?.contains(categoryId) ?? false)
        ? Theme.of(context).colorScheme.secondary.withOpacity(0.2)
        : Colors.transparent;
    final imageBoxFit = ImageTools.boxFit(
      kAdvanceConfig.categoryImageBoxFit,
      defaultValue: BoxFit.contain,
    );
    return GestureDetector(
      onTap: () => onTap?.call(categoryId),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: categoryImage != null ? 5 : 10,
          vertical: 4,
        ),
        margin: const EdgeInsets.only(left: 5, top: 10, bottom: 4),
        decoration: BoxDecoration(
          color: highlightColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: categoryImage != null
            ? Container(
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: SizedBox(
                        width: 55,
                        height: 50,
                        child: FluxImage(
                          imageUrl: categoryImage!,
                          fit: imageBoxFit,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      categoryName.toUpperCase(),
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                            fontWeight: FontWeight.w500,
                          )
                          .apply(
                            fontSizeFactor: 0.7,
                          ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              )
            : Center(
                child: Text(
                  categoryName.toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ),
      ),
    );
  }
}
