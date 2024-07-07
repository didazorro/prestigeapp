import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/tools/price_tools.dart';
import '../../models/app_model.dart';
import '../../models/index.dart' show Product;
import '../../modules/dynamic_layout/config/product_config.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/services.dart';
import '../web_layout/widgets/mouse_hover_transition.dart';
import 'action_button_mixin.dart';
import 'index.dart' show HeartButton, ProductImage, ProductOnSale, ProductTitle;

class ProductSimpleLayoutWeb extends StatelessWidget with ActionButtonMixin {
  final Product item;
  final double? width;
  final double? maxWidth;
  final offset;
  final ProductConfig config;

  const ProductSimpleLayoutWeb({
    required this.item,
    this.width,
    this.maxWidth,
    this.offset,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    final isShowPrice = config.hidePrice == false;
    final currency = Provider.of<AppModel>(context, listen: false).currency;
    final currencyRate =
        Provider.of<AppModel>(context, listen: false).currencyRate;

    final widthItem = width ?? 30;
    final heighItem = (widthItem / 0.8) - 105;
    Widget productImage = Stack(
      children: [
        ProductImage(
          width: widthItem,
          product: item,
          config: config,
          ratioProductImage: heighItem / widthItem,
          offset: offset,
          onTapProduct: () =>
              onTapProduct(context, product: item, config: config),
        ),
        if (config.showHeart && !item.isEmptyProduct())
          Positioned.directional(
            textDirection: Directionality.of(context),
            end: config.hMargin / 2,
            top: config.hMargin / 2,
            child: SizedBox(
              width: 50,
              height: 50,
              child: HeartButton(
                product: item,
                size: 20,
              ),
            ),
          ),
        Positioned.directional(
          start: 8,
          top: 8,
          textDirection: Directionality.of(context),
          child: ProductOnSale(
            product: item,
            config: ProductConfig.empty()..hMargin = 0,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
      ],
    );

    Widget productInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductTitle(
          product: item,
          hide: config.hideTitle,
          maxLines: config.titleLine,
          textCenter: false,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 12),
        if (isShowPrice) ...[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Services().widget.renderDetailPrice(context, item, item.price),

              /// For variable product, hide regular price when loading product variation.
              if (item.price != null &&
                  item.regularPrice != null &&
                  item.price != item.regularPrice) ...[
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 5, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        PriceTools.getCurrencyFormatted(
                          item.regularPrice,
                          currencyRate,
                          currency: currency,
                        )!,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                                ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ],
          ),
        ]
      ],
    );

    var padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16);

    if (!Layout.isDisplayDesktop(context)) {
      padding = padding / 1.5;
    }

    return MouseHoverTransition(
      duration: const Duration(milliseconds: 100),
      scale: 0.03,
      child: GestureDetector(
        onTap: () => onTapProduct(context, product: item, config: config),
        behavior: HitTestBehavior.opaque,
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth ?? width!),
          margin: EdgeInsets.symmetric(
            horizontal: config.hMargin,
            vertical: config.vMargin,
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(config.borderRadius ?? 16),
            border: Border.all(
              color: Theme.of(context).disabledColor,
              width: 0.5,
            ),
          ),
          width: width!,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              productImage,
              Padding(
                padding: padding,
                child: productInfo,
              ),
              // Center(
              //   child: Container(
              //     color: Colors.yellow,
              //     height: 120,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
