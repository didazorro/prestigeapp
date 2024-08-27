import 'package:easy_paypal/easy_paypal.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/models/index.dart';

class PayPalNative {
  final _easyPaypal = EasyPaypal();

  PayPalNative._() {
    _easyPaypal.initConfig(
        config: PPCheckoutConfig(
      clientId: kPaypalConfig['clientId'],
      returnUrl: kPaypalConfig['returnUrl'],
      environment: (kPaypalConfig['production'] ?? false)
          ? PPEnvironment.live
          : PPEnvironment.sandbox,
    ));
  }

  static final PayPalNative _instance = PayPalNative._();

  factory PayPalNative() => _instance;

  void checkout({
    required PPCheckoutCallback callback,
    required CartModel cartModel,
    required Map<String, dynamic> currencyRate,
    required String? currency,
  }) {
    _easyPaypal.setCallback(callback);
    final order = PPOrder(
      intent: PPOrderIntent.capture,
      appContext: const PPOrderAppContext(
        shippingPreference: PPShippingPreference.setProvidedAddress,
        userAction: PPUserAction.payNowAction,
        // locale: 'en-US',
      ),
      purchaseUnitList: [
        PPPurchaseUnit(
          shipping: PPShipping(
            address: PPOrderAddress(
              addressLine1: cartModel.address?.street,
              addressLine2: '',
              adminArea2: cartModel.address?.city,
              adminArea1: cartModel.address?.state,
              postalCode: cartModel.address?.zipCode,
              countryCode: cartModel.address?.country,
            ),
          ),
          orderAmount: PPOrderAmount(
            currencyCode: PPCurrencyCode.values.firstWhere(
              (element) => element.name == currency?.toLowerCase(),
              orElse: () => PPCurrencyCode.usd,
            ),
            value: '${cartModel.getTotal() ?? 0}',
          ),
        ),
      ],
    );
    _easyPaypal.checkout(order: order);
  }
}
