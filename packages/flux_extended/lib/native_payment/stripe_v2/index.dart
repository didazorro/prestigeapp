import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/entities/address.dart' as user_address;
import 'package:fstore/models/entities/stripe_payment_intent.dart';
import 'package:fstore/services/services.dart';

export 'package:flutter_stripe/flutter_stripe.dart';

class StripeServicesV2 {
  bool _initialized = false;

  late final _merchantCountryCode;
  late final _merchantDisplayName;
  late final _returnUrl;

  static final StripeServicesV2 _instance = StripeServicesV2._internal();

  factory StripeServicesV2() => _instance;

  StripeServicesV2._internal();

  Future<void> init() async {
    if (_initialized) {
      return;
    }

    _merchantCountryCode =
        (kStripeConfig['merchantCountryCode']?.isEmpty ?? true)
            ? 'US'
            : kStripeConfig['merchantCountryCode'];

    _merchantDisplayName =
        (kStripeConfig['merchantDisplayName']?.isEmpty ?? true)
            ? 'FluxStore'
            : kStripeConfig['merchantDisplayName'];

    _returnUrl = (kStripeConfig['returnUrl']?.isEmpty ?? true)
        ? 'fluxstore://inspireui.com'
        : kStripeConfig['returnUrl'];

    Stripe.publishableKey = kStripeConfig['publishableKey'];
    Stripe.merchantIdentifier = kStripeConfig['merchantIdentifier'] ??
        'merchant.com.inspireui.mstore.flutter';
    Stripe.urlScheme = _returnUrl.split('://').first;
    await Stripe.instance.applySettings();
    _initialized = true;
  }

  Future<bool> handlePayment(
    context, {
    String? orderId,
    required String totalPrice,
    required String currencyCode,
    required String emailAddress,
    required String name,
    String? cookie,
    Color? color,
    bool darkMode = false,
    bool useApplePay = false,
    bool useGooglePay = false,
    String applePayPrice = '0',
    user_address.Address? address,
  }) async {
    try {
      await init();
      final isTestEnv =
          !('${kStripeConfig['publishableKey']}'.startsWith('pk_live'));

      var paymentIntent = await getClientSecret(
        totalPrice: totalPrice,
        currencyCode: currencyCode,
        emailAddress: emailAddress,
        name: name,
        orderId: orderId,
        cookie: cookie,
      );
      if (paymentIntent == null) {
        return false;
      }

      if (useApplePay) {
        var isSupportedApplePay =
            await Stripe.instance.isPlatformPaySupported();
        if (!isSupportedApplePay) {
          final confirmed = await context.showFluxDialogText(
            title: S.of(context).notice,
            body: S.of(context).doesNotSupportApplePay,
            primaryAction: S.of(context).setup,
            secondaryAction: S.of(context).cancel,
            primaryAsDestructiveAction: false,
            directionButton: Axis.horizontal,
          );
          if (confirmed) {
            await Stripe.instance.openApplePaySetup();
          }
          return false;
        }

        await Stripe.instance.confirmPlatformPayPaymentIntent(
          confirmParams: PlatformPayConfirmParams.applePay(
            applePay: ApplePayParams(
              cartItems: [
                ApplePayCartSummaryItem.immediate(
                  label: _merchantDisplayName,
                  amount: applePayPrice,
                  isPending: false,
                ),
              ],
              merchantCountryCode: _merchantCountryCode,
              currencyCode: currencyCode,
              requiredBillingContactFields: [
                ApplePayContactFieldsType.name,
                ApplePayContactFieldsType.emailAddress,
              ],
            ),
          ),
          clientSecret: paymentIntent.clientSecret ?? '',
        );

        return _checkTransactionStatus(paymentIntent.id ?? '');
      }

      if (useGooglePay) {
        var isSupportedGooglePay = await Stripe.instance.isPlatformPaySupported(
          googlePay: IsGooglePaySupportedParams(
            testEnv: isTestEnv,
            existingPaymentMethodRequired: false,
          ),
        );
        if (!isSupportedGooglePay) {
          return false;
        }

        await Stripe.instance.confirmPlatformPayPaymentIntent(
          confirmParams: PlatformPayConfirmParams.googlePay(
            googlePay: GooglePayParams(
              merchantName: _merchantDisplayName,
              merchantCountryCode: _merchantCountryCode,
              isEmailRequired: true,
              testEnv: isTestEnv,
              currencyCode: currencyCode,
              // amount: int.parse(totalPrice),
            ),
          ),
          clientSecret: paymentIntent.clientSecret ?? '',
        );
        return _checkTransactionStatus(paymentIntent.id ?? '');
      }

      final billingDetails = BillingDetails(
        email: emailAddress,
        name: name,
        phone: address?.phoneNumber,
        address: Address(
          country: address?.country ?? _merchantCountryCode,
          city: address?.city,
          line1: address?.street,
          line2: '',
          postalCode: address?.zipCode,
          state: address?.state,
        ),
      );

      // If `merchantDisplayName` is not set or empty, Payment sheet will not show on Adnroid https://github.com/flutter-stripe/flutter_stripe/discussions/982
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent.clientSecret ?? '',
          merchantDisplayName: _merchantDisplayName,
          customerId: paymentIntent.customerId,
          returnURL:
              '$_returnUrl?isStripe=true', // Add param `isStripe=true` to fix the webview do not close automatically after payment
          setupIntentClientSecret: paymentIntent.setupIntentClientSecret,
          customerEphemeralKeySecret: paymentIntent.customerEphemeralKeySecret,
          style: darkMode ? ThemeMode.dark : ThemeMode.light,
          appearance: PaymentSheetAppearance(
            colors: PaymentSheetAppearanceColors(
              primary: color,
            ),
            primaryButton: PaymentSheetPrimaryButtonAppearance(
              colors: PaymentSheetPrimaryButtonTheme(
                light: PaymentSheetPrimaryButtonThemeColors(
                  background: color,
                ),
                dark: PaymentSheetPrimaryButtonThemeColors(
                  background: color,
                ),
              ),
            ),
          ),
          billingDetails: billingDetails,
        ),
      );

      await Stripe.instance.presentPaymentSheet();

      return _checkTransactionStatus(paymentIntent.id ?? '');
    } catch (err, trace) {
      printError(err, trace);
      rethrow;
    }
  }

  Future<StripePaymentIntent?> getClientSecret({
    required String totalPrice,
    required String currencyCode,
    required String emailAddress,
    required String name,
    String? orderId,
    String? cookie,
  }) async {
    return Services().api.createPaymentIntentStripeV3(
          totalPrice: totalPrice,
          currencyCode: currencyCode,
          emailAddress: emailAddress,
          name: name,
          orderId: orderId,
          cookie: cookie,
        );
  }

  Future<bool> _checkTransactionStatus(String paymentIntentId) async {
    try {
      var res = await Services().api.getPaymentIntentStripeV3(paymentIntentId);
      return res?.isSucceeded ?? false;
    } catch (err, trace) {
      printError(err, trace);
      rethrow;
    }
  }
}
