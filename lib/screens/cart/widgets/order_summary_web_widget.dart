import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/config/models/cart_config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/coupon.dart';
import '../../../services/service_config.dart';
import '../../../widgets/common/index.dart';
import 'coupon_list.dart';

class OrderSummaryWebWidget extends StatelessWidget {
  const OrderSummaryWebWidget({
    super.key,
    required this.showPrice,
    required this.enableCoupon,
    required this.isApplyCouponSuccess,
    required this.cartModel,
    this.coupons,
    required this.removeCoupon,
    required this.checkCoupon,
    required this.couponController,
    this.couponMsg,
    required this.style,
  });

  final OrderSummaryStyle style;
  final bool enableCoupon;
  final bool isApplyCouponSuccess;
  final bool showPrice;
  final CartModel cartModel;
  final Coupons? coupons;
  final String? couponMsg;
  final Future<void> Function(CartModel cartModel) removeCoupon;
  final void Function(String couponCode, CartModel cartModel) checkCoupon;
  final TextEditingController couponController;

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context);
    final currency = appModel.currency;
    final defaultCurrency = kAdvanceConfig.defaultCurrency;
    final currencyRate = appModel.currencyRate;
    final screenSize = MediaQuery.sizeOf(context);
    const smallAmountStyle = TextStyle(
      // color: Theme.of(context).colorScheme.secondary,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      height: 24 / 16,
    );

    const largeAmountStyle = TextStyle(
      // color: Theme.of(context).colorScheme.secondary,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 30 / 20,
    );

    return Container(
      padding: const EdgeInsets.all(24).copyWith(bottom: 0),
      width: screenSize.width,
      child: SizedBox(
        width: screenSize.width / (2 / (screenSize.height / screenSize.width)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              S.of(context).orderSummary,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                height: 28 / 18,
              ),
            ),
            if (enableCoupon)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: _renderCouponCode(context, isApplyCouponSuccess),
              ),
            if (isApplyCouponSuccess && couponMsg.isNotNullAndNotEmpty)
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                  bottom: 15,
                  top: 10,
                ),
                child: Text(
                  couponMsg!,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),

            if (showPrice)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${S.of(context).subtotal.toTitleCase()}:',
                            style: smallAmountStyle,
                          ),
                        ),
                        Text(
                          PriceTools.getCurrencyFormatted(
                            cartModel.getSubTotal()?.toString() ?? '',
                            currencyRate,
                            currency: cartModel.isWalletCart()
                                ? defaultCurrency?.currencyCode
                                : currency,
                          )!,
                          style: smallAmountStyle,
                        ),
                      ],
                    ),
                    if (style.showShippingFee) ...[
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${S.of(context).shipping.toTitleCase()}:',
                              style: smallAmountStyle,
                            ),
                          ),
                          Text(
                            PriceTools.getCurrencyFormatted(
                              cartModel.getShippingCost(),
                              currencyRate,
                              currency: cartModel.isWalletCart()
                                  ? defaultCurrency?.currencyCode
                                  : currency,
                            )!,
                            style: smallAmountStyle,
                          ),
                        ],
                      ),
                    ],
                    if (cartModel.rewardTotal > 0) ...[
                      const Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: Text(S.of(context).cartDiscount,
                                style: smallAmountStyle),
                          ),
                          Text(
                            PriceTools.getCurrencyFormatted(
                                cartModel.rewardTotal, currencyRate,
                                currency: currency)!,
                            style: smallAmountStyle,
                          ),
                        ],
                      ),
                    ],
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${S.of(context).totalPrice.toTitleCase()}:',
                            style: smallAmountStyle,
                          ),
                        ),
                        cartModel.calculatingDiscount
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                ),
                              )
                            : Text(
                                PriceTools.getCurrencyFormatted(
                                    cartModel.getTotal()!, currencyRate,
                                    currency: cartModel.isWalletCart()
                                        ? defaultCurrency?.currencyCode
                                        : currency)!,
                                style: largeAmountStyle,
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            // if (widget.showRecurringTotals)
            //   Services().widget.renderRecurringTotals(context)
          ],
        ),
      ),
    );
  }

  Widget _renderCouponCode(BuildContext context, bool isApplyCouponSuccess) {
    final showCouponList =
        kAdvanceConfig.showCouponList && ServerConfig().isSupportCouponList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: kGrey200,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap:
                      showCouponList ? () => _openCounponList(context) : null,
                  behavior: HitTestBehavior.translucent,
                  child: AbsorbPointer(
                    absorbing: showCouponList,
                    child: TextField(
                      controller: couponController,
                      autocorrect: false,
                      enabled: !isApplyCouponSuccess &&
                          !cartModel.calculatingDiscount,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: S.of(context).couponCode,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                      ),
                    ),
                  ),
                ),
              ),
              const VerticalDivider(),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: !cartModel.calculatingDiscount
                    ? () {
                        if (!isApplyCouponSuccess) {
                          checkCoupon(couponController.text, cartModel);
                        } else {
                          removeCoupon(cartModel);
                        }
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    cartModel.calculatingDiscount
                        ? S.of(context).loading
                        : !isApplyCouponSuccess
                            ? S.of(context).apply
                            : S.of(context).remove,
                    style: const TextStyle(color: kGrey400),
                  ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => _openCounponList(context),
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 24),
            child: Row(
              children: [
                FluxImage(
                  imageUrl: 'assets/icons/payment/discount.svg',
                  height: 18,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  S.of(context).selectVoucher,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 20 / 14,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _openCounponList(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: Navigator.of(context).pop,
            behavior: HitTestBehavior.translucent,
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  child: CouponList(
                    isFromCart: true,
                    isModal: true,
                    coupons: coupons,
                    onSelect: (String couponCode) {
                      Future.delayed(const Duration(milliseconds: 250), () {
                        couponController.text = couponCode;
                        checkCoupon(couponController.text, cartModel);
                      });
                    },
                  ),
                ),
              ),
            ),
          );
        },
      );
}
