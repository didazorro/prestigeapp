import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/extensions/extensions.dart';
import '../../../generated/l10n.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/cart/cart_item_meta_data.dart';
import '../../../models/index.dart' show AppModel, Product;
import '../../../services/index.dart';
import '../action_button_mixin.dart';
import 'cart_item_state_ui.dart';
import 'layouts/cart_item_normal_widget.dart';
import 'layouts/cart_item_short_type_widget.dart';
import 'layouts/cart_item_style01_widget.dart';
import 'layouts/cart_item_web_widget.dart';

class ShoppingCartRow extends StatelessWidget with ActionButtonMixin {
  const ShoppingCartRow({
    required this.product,
    required this.quantity,
    this.onRemove,
    this.onChangeQuantity,
    this.cartItemMetaData,
    this.enableTopDivider,
    this.enableBottomDivider = true,
    this.showStoreName = true,
    this.enabledTextBoxQuantity = true,
    this.cartStyle = CartStyle.normal,
  });

  final bool? enableTopDivider;
  final bool enableBottomDivider;
  final bool enabledTextBoxQuantity;
  final Product? product;
  final CartItemMetaData? cartItemMetaData;
  final int? quantity;
  final bool Function(int value)? onChangeQuantity;
  final VoidCallback? onRemove;
  final bool showStoreName;
  final CartStyle cartStyle;

  void _onRemoveItem(BuildContext context) async {
    final confirmed = await context.showFluxBottomSheetActionText(
      useAppNavigator: false,
      title: S.of(context).notice,
      body: S.of(context).confirmRemoveProductInCart,
      primaryAction: S.of(context).remove,
      secondaryAction: S.of(context).keep,
      directionButton: Axis.vertical,
      primaryAsDestructiveAction: true,
    );

    if (confirmed) {
      onRemove?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    var currency = Provider.of<AppModel>(context).currency;
    final currencyRate = Provider.of<AppModel>(context).currencyRate;

    return Selector<CartModel, Product?>(
      selector: (_, cartModel) => cartModel.item[product?.id],
      builder: (context, product, __) {
        if (product == null) {
          return const SizedBox();
        }

        final price = Services().widget.getPriceItemInCart(
            product, cartItemMetaData, currencyRate, currency);
        final imageFeature =
            (cartItemMetaData?.variation?.imageFeature?.isNotEmpty ?? false)
                ? cartItemMetaData?.variation!.imageFeature
                : product.imageFeature;
        var maxQuantity = kCartDetail['maxAllowQuantity'] ?? 100;
        var totalQuantity = cartItemMetaData?.variation != null
            ? (cartItemMetaData?.variation!.stockQuantity ?? maxQuantity)
            : (product.stockQuantity ?? maxQuantity);
        var limitQuantity =
            totalQuantity > maxQuantity ? maxQuantity : totalQuantity;
        final inStock = (cartItemMetaData?.variation != null
                ? cartItemMetaData?.variation!.inStock
                : product.inStock) ??
            false;
        final isOnBackorder = cartItemMetaData?.variation != null
            ? cartItemMetaData?.variation?.backordersAllowed ?? false
            : product.backordersAllowed;
        final priceWithQuantity = Services().widget.getPriceItemInCart(
              product,
              cartItemMetaData,
              currencyRate,
              currency,
              quantity: quantity ?? 1,
            );
        final stateUI = CartItemStateUI(
          enableBottomDivider: enableBottomDivider,
          inStock: inStock,
          isOnBackorder: isOnBackorder,
          onTapProduct: onTapProduct,
          product: product,
          showStoreName: showStoreName,
          cartItemMetaData: cartItemMetaData,
          enableTopDivider: enableTopDivider,
          imageFeature: imageFeature,
          limitQuantity: limitQuantity,
          enabledTextBoxQuantity: enabledTextBoxQuantity,
          onChangeQuantity: onChangeQuantity,
          onRemove: onRemove != null ? () => _onRemoveItem(context) : null,
          price: price,
          priceWithQuantity: priceWithQuantity,
          quantity: quantity,
        );

        // Because this case does not need to
        // use LayoutBuilder, so separate it and use if
        if (cartStyle.isWeb) {
          return CartItemWebWidget(stateUI);
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            switch (cartStyle) {
              case CartStyle.short:
                return CartItemShortTypeWidget(
                  stateUI,
                  constraintsCurrent: constraints,
                );
              case CartStyle.style01:
                return CartItemStyle01Widget(
                  stateUI,
                  constraintsCurrent: constraints,
                );
              case CartStyle.normal:
              default:
                return CartItemNormalWidget(
                  stateUI,
                  heightImageFeature: constraints.maxWidth * 0.3,
                  widthImageFeature: constraints.maxWidth * 0.25,
                );
            }
          },
        );
      },
    );
  }
}
