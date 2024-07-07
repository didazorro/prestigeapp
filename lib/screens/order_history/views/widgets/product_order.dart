import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../models/entities/store_delivery_date.dart';
import '../../../../models/order/order.dart';
import '../v2/product_order_item_v2.dart';
import 'product_order_item.dart';

class ProductOrder extends StatelessWidget {
  final String orderId;
  final OrderStatus orderStatus;
  final ProductItem product;
  final List<StoreDeliveryDate>? storeDeliveryDates;
  final String? currencyCode;
  final bool disableReview;

  /// For prestashop.
  final int index;

  const ProductOrder({
    required this.orderId,
    required this.orderStatus,
    required this.product,
    this.storeDeliveryDates,
    this.currencyCode,
    this.index = 0,
    this.disableReview = false,
  });

  @override
  Widget build(BuildContext context) {
    return switch (kOrderConfig.version) {
      2 => ProductOrderItemNew(
          orderId: orderId,
          orderStatus: orderStatus,
          product: product,
          storeDeliveryDates: storeDeliveryDates,
          currencyCode: currencyCode,
          disableReview: disableReview,
        ),
      _ => ProductOrderItem(
          orderId: orderId,
          orderStatus: orderStatus,
          product: product,
          storeDeliveryDates: storeDeliveryDates,
          currencyCode: currencyCode,
          disableReview: disableReview,
        )
    };
  }
}
