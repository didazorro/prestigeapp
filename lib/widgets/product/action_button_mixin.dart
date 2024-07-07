import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../common/tools/flash.dart';
import '../../generated/l10n.dart';
import '../../models/cart/cart_base.dart';
import '../../models/cart/cart_item_meta_data.dart';
import '../../models/entities/product.dart';
import '../../models/recent_product_model.dart';
import '../../modules/analytics/analytics.dart';
import '../../modules/dynamic_layout/config/product_config.dart';
import '../../routes/flux_navigate.dart';
import 'dialog_add_to_cart.dart';

mixin ActionButtonMixin {
  void onTapProduct(
    context, {
    bool isFromSearchScreen = false,
    required Product product,
    ProductConfig? config,
  }) {
    if (product.imageFeature == '') return;

    Analytics.triggerTapProduct(
      product,
      config?.category?.join(',') ??
          config?.tag?.join(',') ??
          product.categoryId,
      config?.name ?? product.categoryName,
    );

    Provider.of<RecentModel>(context, listen: false).addRecentProduct(product);

    if (isFromSearchScreen) {
      Navigator.of(context).pushNamed(
        RouteList.productDetail,
        arguments: product,
      );
      return;
    }

    FluxNavigate.pushNamed(RouteList.productDetail,
        arguments: product, forceRootNavigator: true);
  }

  void addToCart(
    BuildContext context, {
    int quantity = 1,
    bool enableBottomAddToCart = false,
    required Product product,
  }) {
    final String Function({
      dynamic context,
      dynamic isSaveLocal,
      Function notify,
      Product? product,
      int quantity,
      CartItemMetaData? cartItemMetaData,
    }) addProductToCart =
        Provider.of<CartModel>(context, listen: false).addProductToCart;
    if (enableBottomAddToCart) {
      DialogAddToCart.show(context, product: product, quantity: quantity);
    } else {
      var message = addProductToCart(
        product: product,
        context: context,
        quantity: quantity,
      );
      if (message.isEmpty) {
        Analytics.triggerAddToCart(product, quantity, context);

        FlashHelper.message(
          context,
          message: product.name != null
              ? S.of(context).productAddToCart(product.name!)
              : S.of(context).addToCartSucessfully,
          messageStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        );
      } else {
        FlashHelper.errorMessage(
          context,
          message: message,
        );
      }
    }
  }

  void updateQuantity({
    required Product product,
    required int quantity,
    required BuildContext context,
  }) {
    final cartModel = Provider.of<CartModel>(context, listen: false);
    if (quantity == 0) {
      cartModel.removeItemFromCart(product.id);
      return;
    }
    cartModel.updateQuantity(product, product.id, quantity);
  }
}
