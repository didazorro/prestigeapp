import 'package:flutter/material.dart';

import '../../../models/entities/product.dart';
import '../../../services/index.dart';
import '../../../widgets/common/background_color_widget.dart';
import '../../../widgets/product/product_simple_view.dart';
import '../helper/helper.dart';
import '../index.dart';

/// The Banner Group type to display the image as multi columns
class BannerGroupItems extends StatefulWidget {
  final BannerConfig config;
  final onTap;

  const BannerGroupItems(
      {required this.config, required this.onTap, super.key});

  @override
  State<BannerGroupItems> createState() => _StateBannerGroupItems();
}

class _StateBannerGroupItems extends State<BannerGroupItems> {
  int indexSelected = 0;

  List<BannerItemConfig> get items => widget.config.items;

  BannerItemConfig? get currentItem {
    final index = indexSelected;
    if (index < items.length) {
      final item = items[index];
      return item;
    }
    return null;
  }

  bool get showProduct {
    final item = currentItem;
    if (item == null) return false;
    return item.defaultShowProduct && item.bannerWithProduct;
  }

  double? bannerPercent(context, width) {
    final screenSize = MediaQuery.of(context).size;
    return Helper.formatDouble(
        widget.config.height ?? 0.3 / (screenSize.height / width));
  }

  void onTap(int index, value) {
    var bannerItems = widget.config.items;
    var item = bannerItems[index];
    if (item.bannerWithProduct) {
      setState(() {
        indexSelected = index;
      });
      return;
    }
    widget.onTap(value);
  }

  Future<Product?> getProductById(String id) async {
    try {
      return await Services().api.getProduct(id);
    } catch (e) {
      return null;
    }
  }

  Future<List<Product>?> getProductsByCategoryId(dynamic id) async {
    try {
      return await Services().api.fetchProductsByCategory(
            categoryId: id,
            page: 1,
          );
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    List items = widget.config.items;
    final screenSize = MediaQuery.of(context).size;

    final boxShadow = widget.config.boxShadow ?? BoxShadowConfig.empty();

    final boxFit = widget.config.fit;

    return BackgroundColorWidget(
      enable: widget.config.enableBackground,
      child: LayoutBuilder(builder: (context, constraint) {
        var bannerPercentWidth = bannerPercent(context, constraint.maxWidth)!;
        var height = screenSize.height * bannerPercentWidth;
        return Column(
          children: [
            Container(
              height: height,
              margin: EdgeInsets.only(
                left: widget.config.marginLeft,
                right: widget.config.marginRight,
                top: widget.config.marginTop,
                bottom: widget.config.marginBottom,
              ),
              child: Column(
                children: [
                  if (widget.config.title != null)
                    HeaderText(config: widget.config.title!),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        for (int i = 0; i < items.length; i++)
                          Expanded(
                            child: BannerImageItem(
                              config: items[i],
                              boxFit: boxFit,
                              height: height,
                              onTap: (value) => onTap(i, value),
                              padding: widget.config.padding,
                              radius: widget.config.radius,
                              enableParallax: widget.config.enableParallax,
                              parallaxImageRatio:
                                  widget.config.parallaxImageRatio,
                              boxShadowConfig: boxShadow,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (showProduct)
              Builder(
                key: Key('index-$indexSelected'),
                builder: (context) {
                  final item = currentItem;
                  if (item == null) {
                    return const SizedBox();
                  }
                  final products = item.products;

                  /// display with list products
                  if (products.isNotEmpty) {
                    return Column(
                      children: List.generate(
                        item.productLength,
                        (index) {
                          if (index > products.length) {
                            return const SizedBox();
                          }
                          final product = products[index];
                          return FutureBuilder<Product?>(
                            future: getProductById(product),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return ProductSimpleView(
                                  item: snapshot.data,
                                  type: SimpleType.backgroundColor,
                                  enableBackgroundColor: false,
                                );
                              }
                              return ProductSimpleView(
                                item: Product.empty(index.toString()),
                                type: SimpleType.backgroundColor,
                                enableBackgroundColor: false,
                              );
                            },
                          );
                        },
                      ),
                    );
                  }

                  /// display with category id
                  return FutureBuilder<List<Product>?>(
                    future: getProductsByCategoryId(item.categoryId),
                    builder: (context, snapshot) {
                      final data = snapshot.data ?? [];
                      var length = data.length;
                      if (length > item.productLength) {
                        length = item.productLength;
                      }
                      if (snapshot.hasData) {
                        return Column(
                          children: List.generate(
                            length,
                            (index) => ProductSimpleView(
                              item: data[index],
                              type: SimpleType.backgroundColor,
                              enableBackgroundColor: false,
                            ),
                          ),
                        );
                      }
                      return Column(
                        children: List.generate(
                          item.productLength,
                          (index) => ProductSimpleView(
                            item: Product.empty(index.toString()),
                            type: SimpleType.backgroundColor,
                            enableBackgroundColor: false,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
          ],
        );
      }),
    );
  }
}
