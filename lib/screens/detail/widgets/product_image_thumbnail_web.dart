import 'package:flutter/material.dart';

import '../../../common/tools.dart';

class ProductImageThumbnailWeb extends StatelessWidget {
  final List<String> itemList;
  final Function({required int index, bool? fullScreen}) onSelect;
  final int selectIndex;

  const ProductImageThumbnailWeb({
    required this.itemList,
    required this.onSelect,
    this.selectIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    if (itemList.isEmpty) {
      return const SizedBox();
    }

    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: itemList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = itemList[index];
        return GestureDetector(
          onDoubleTap: () => onSelect(index: index, fullScreen: true),
          onLongPress: () => onSelect(index: index, fullScreen: true),
          onTap: () => onSelect(index: index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: selectIndex == index
                    ? Theme.of(context).colorScheme.primary
                    : Colors.transparent,
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 0.8,
                child: ImageResize(
                  url: item,
                  isResize: true,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
