import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../common/tools.dart';
import '../../../widgets/thumbnail_video_widget.dart';

const _height = 50.0;
const _widthImage = _height;
final _heightImage = _height * (kIsWeb ? 1.2 : 1);

class ProductImageThumbnail extends StatefulWidget {
  final List<String> itemList;
  final bool hasVideo;
  final Function({required int index, bool? fullScreen}) onSelect;
  final int selectIndex;

  const ProductImageThumbnail({
    super.key,
    required this.itemList,
    this.hasVideo = false,
    required this.onSelect,
    this.selectIndex = 0,
  });

  @override
  State<ProductImageThumbnail> createState() => _ProductImageThumbnailState();
}

class _ProductImageThumbnailState extends State<ProductImageThumbnail> {
  final _padding = const EdgeInsets.all(1);
  final _margin = const EdgeInsets.only(right: 10, top: 4);

  @override
  Widget build(BuildContext context) {
    if (widget.itemList.isEmpty) {
      return const SizedBox();
    }

    return SizedBox(
      height: _height,
      width: MediaQuery.of(context).size.width - 95,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 8),
            ...List<Widget>.generate(
              widget.itemList.length,
              (i) {
                Widget body = const SizedBox();
                final decoration = BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(
                    color: widget.selectIndex == i
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    width: 2,
                  ),
                );

                if ((widget.hasVideo && i == 0)) {
                  body = ThumbnailVideoWidget(
                    widget.itemList[i],
                    maxHeight: _heightImage,
                    maxWidth: _widthImage,
                    padding: _padding,
                    margin: _margin,
                    decoration: decoration,
                    duration: const Duration(milliseconds: 200),
                  );
                } else {
                  body = AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: _padding,
                    margin: _margin,
                    decoration: decoration,
                    child: ImageResize(
                      url: widget.itemList[i],
                      height: _heightImage,
                      width: _widthImage,
                      isResize: true,
                      fit: BoxFit.cover,
                    ),
                  );
                }

                return GestureDetector(
                  onDoubleTap: () =>
                      widget.onSelect(index: i, fullScreen: true),
                  onLongPress: () =>
                      widget.onSelect(index: i, fullScreen: true),
                  onTap: () => widget.onSelect(index: i),
                  child: body,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
