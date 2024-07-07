enum AttributeProductCartStyle {
  normal,
  short,
  column;

  bool get isShortStyle => this == AttributeProductCartStyle.short;
  bool get isNormalStyle => this == AttributeProductCartStyle.normal;
  bool get isColumnStyle => this == AttributeProductCartStyle.column;
}

enum OrderSummaryStyle {
  normal,
  webMyCart,
  webCheckoutShippingAddress,
  webCheckoutShippingMethod,
  webCheckoutPayment,
  webCheckoutReview,
  ;

  bool get isWeb => [
        OrderSummaryStyle.webMyCart,
        OrderSummaryStyle.webCheckoutShippingAddress,
        OrderSummaryStyle.webCheckoutShippingMethod,
        OrderSummaryStyle.webCheckoutReview,
        OrderSummaryStyle.webCheckoutPayment,
      ].contains(this);

  bool get showShippingFee => [
        OrderSummaryStyle.webCheckoutReview,
        OrderSummaryStyle.webCheckoutPayment,
      ].contains(this);

  bool get enablePlaceOrder => [
        OrderSummaryStyle.webCheckoutReview,
      ].contains(this);

  bool get isWebMyCart => this == OrderSummaryStyle.webMyCart;
  bool get isWebCheckoutPayment => this == OrderSummaryStyle.webCheckoutPayment;
  bool get isWebCheckoutShippingAddress =>
      this == OrderSummaryStyle.webCheckoutShippingAddress;
  bool get isWebCheckoutReview => this == OrderSummaryStyle.webCheckoutReview;
}
