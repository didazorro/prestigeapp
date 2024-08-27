import 'package:flutter/cupertino.dart';

import 'package:fstore/models/booking/booking_model.dart';
import 'package:fstore/models/entities/product.dart';
import '../views/product_booking_layout.dart';

mixin BookingServiceMixin {
  /// Get Booking Layout
  Widget getBookingLayout({
    required Product product,
    Function(BookingModel)? onCallBack,
    bool wrapSliver = true,
  }) {
    if (wrapSliver) {
      return SliverToBoxAdapter(
        child: ProductBookingLayout(
          product: product,
          onCallBack: onCallBack,
        ),
      );
    }
    return ProductBookingLayout(
      key: ValueKey('keyProductBooking${product.id}'),
      product: product,
      onCallBack: onCallBack,
    );
  }
}
