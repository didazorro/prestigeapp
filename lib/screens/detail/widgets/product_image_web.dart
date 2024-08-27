import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/image_tools.dart';
import '../../../models/entities/index.dart';
import '../../../models/product_model.dart';
import 'image_galery.dart';
import 'product_image_thumbnail_web.dart';
import 'video_feature.dart';

class ProductImageWeb extends StatefulWidget {
  final Product product;
  final Function(int index)? onChange;
  final bool isFlexibleSpaceBar;

  final Function(
      BuildContext context,
      Widget pageView,
      PageController pageController,
      List<String> items,
      bool hasVideo)? customBuilder;

  const ProductImageWeb({
    super.key,
    required this.product,
    this.onChange,
    this.customBuilder,
    this.isFlexibleSpaceBar = true,
  });

  @override
  State<ProductImageWeb> createState() => _ProductImageWebState();
}

class _ProductImageWebState extends State<ProductImageWeb> {
  final PageController _pageController = PageController();

  Timer? _timer;
  int _lastInteraction = 0;

  Future<void> nextImage() async {
    if (!mounted || !_pageController.hasClients) {
      return;
    }

    /// Cancel if the page is scrolling.
    if (_pageController.page?.round() != _pageController.page) {
      return;
    }

    /// Cancel if user has touched the gallery within 3 seconds.
    if (DateTime.now().millisecondsSinceEpoch - 3000 <= _lastInteraction) {
      return;
    }

    /// Cancel if video is playing.
    if (hasVideo && _currentPage == 0) {
      return;
    }

    /// Next page if not ends..
    if (_currentPage + 1 < itemList.length) {
      return _pageController.goTo(_currentPage + 1);
    }

    /// Go to first page.
    return _pageController.goTo(0);
  }

  bool initialized = false;
  bool hasVideo = false;
  bool variationLoaded = false;

  late final String _videoUrl;
  final List<String> _images = [];
  final List<String> _variationImages = [];

  int _currentPage = 0;

  List<String> get itemList => {
        if (hasVideo) _videoUrl,
        ..._images,
        ..._variationImages,
      }.toList();

  List<String> get imagesList => {..._images, ..._variationImages}.toList();

  StreamSubscription? _subChangeSelectedVariation;

  void updateVariationImages(List<String> newImages) {
    if (!widget.product.isVariableProduct ||
        _variationImages.isNotEmpty ||
        newImages.isEmpty ||
        newImages.length == _variationImages.length) {
      return;
    }
    for (var url in newImages) {
      if (!_variationImages.contains(url)) {
        _variationImages.add(url);
      }
    }
    initialized = true;
    if (!mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) async {
      if (mounted) {
        afterFirstLayout(context);
      }
    });
    hasVideo = widget.product.hasVideo && kProductDetail.showVideo;

    _images.addAll(widget.product.images);

    if (kProductDetail.showSelectedImageVariant) {
      _subChangeSelectedVariation =
          eventBus.on<EventChangeSelectedVariation>().listen((event) {
        if (!mounted) {
          return;
        }

        /// Skip first time when variation loaded.
        if (!variationLoaded) {
          variationLoaded = true;
          return;
        }

        final image = event.productVariation?.imageFeature;
        _pageController.goToUrl(image, itemList);
      });
    }
  }

  @override
  void dispose() {
    _cancelTimer();
    _subChangeSelectedVariation?.cancel();
    super.dispose();
  }

  void _startTimer() {
    if (_timer?.isActive ?? false) {
      return;
    }

    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        nextImage();
      },
    );
  }

  void _cancelTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
  }

  @override
  void didUpdateWidget(ProductImageWeb oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kProductDetail.autoPlayGallery) {
      _startTimer();
    } else {
      _cancelTimer();
    }
  }

  void afterFirstLayout(BuildContext context) {
    if (widget.product.isVariableProduct) {
      updateVariationImages(
          context.read<ProductModel>().variationsFeatureImages);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!initialized) {
      updateVariationImages(context.select(
          (ProductModel productModel) => productModel.variationsFeatureImages));
    }

    if (itemList.isEmpty) {
      return const SizedBox();
    }

    final pageView = PageView.builder(
      controller: _pageController,
      itemCount: itemList.length,
      onPageChanged: (index) {
        _currentPage = index;
        widget.onChange?.call(index);
        setState(() {});
      },
      itemBuilder: (BuildContext context, int index) {
        if (hasVideo && index == 0) {
          return FeatureVideoPlayer(
            itemList[index],
            autoPlay: true,
          );
        }
        return GestureDetector(
          onTap: () => _onShowGallery(context, index),
          child: Hero(
            tag: 'slider_hero_tag_${itemList[index]}',
            child: ImageResize(
              url: itemList[index],
              fit: ImageTools.boxFit(kProductDetail.boxFit),
              size: kSize.large,
              // width: size.width,
              hidePlaceHolder: true,
              forceWhiteBackground: kProductDetail.forceWhiteBackground,
            ),
          ),
        );
      },
    );

    if (widget.customBuilder != null) {
      return widget.customBuilder?.call(
        context,
        pageView,
        _pageController,
        itemList,
        hasVideo,
      );
    }

    final background = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ProductImageThumbnailWeb(
            itemList: itemList,
            onSelect: ({required int index, bool? fullScreen}) {
              if (fullScreen ?? false) {
                _onShowGallery(context, index);
              }
              _pageController.goTo(index);
            },
            selectIndex: _currentPage,
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          flex: 3,
          child: Listener(
            onPointerDown: (_) => _updateLastInteraction(),
            onPointerMove: (_) => _updateLastInteraction(),
            onPointerHover: (_) => _updateLastInteraction(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: pageView,
            ),
          ),
        ),
      ],
    );

    if (widget.isFlexibleSpaceBar) {
      return FlexibleSpaceBar(
        background: background,
      );
    }
    return background;
  }

  void _updateLastInteraction() {
    _lastInteraction = DateTime.now().millisecondsSinceEpoch;
  }

  void _onShowGallery(BuildContext context, [index = 0]) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (context, __, ___) {
        return ImageGalery(
          images: imagesList,
          index: hasVideo ? index - 1 : index,
          heroTagPrefix: 'slider_hero_tag_',
        );
      }),
    );
  }
}

extension on PageController {
  Future<void> goTo(int page) {
    return animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }

  void goToUrl(String? url, List<String> urls) {
    if (url == null || urls.isEmpty) {
      return;
    }

    final index = urls.indexOf(url);
    if (index == -1) {
      return;
    }
    animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }
}
