import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../common/config.dart';
import '../../../common/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import '../../../models/booking/booking_model.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/additional_payment_info.dart';
import '../../../models/order/order.dart';
import '../../../models/payment_method_model.dart';
import '../../../models/tax_model.dart';
import '../../../models/user_model.dart';
import '../../../modules/analytics/analytics.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../modules/native_payment/flutterwave/services.dart';
import '../../../modules/native_payment/mercado_pago/index.dart';
import '../../../modules/native_payment/paystack/services.dart';
import '../../../modules/native_payment/paytm/services.dart';
import '../../../modules/native_payment/razorpay/services.dart';
import '../../../services/services.dart';
import '../../../widgets/html/index.dart';

mixin CheckoutMixin<T extends StatefulWidget> on State<T>, RazorDelegate {
  bool isPaying = false;
  String? selectedId;

  Function? get onBack;
  Function? get onFinish;
  Function(bool)? get onLoading;

  @override
  void handlePaymentSuccess(PaymentSuccessResponse response) {
    createOrder(
            paid: true,
            additionalPaymentInfo:
                AdditionalPaymentInfo(transactionId: response.paymentId))
        .then((value) {
      onLoading?.call(false);
      isPaying = false;
    });
  }

  @override
  void handlePaymentFailure(PaymentFailureResponse response) {
    onLoading?.call(false);
    isPaying = false;
    final body = jsonDecode(response.message!);
    if (body['error'] != null &&
        body['error']['reason'] != 'payment_cancelled') {
      Tools.showSnackBar(
          ScaffoldMessenger.of(context), body['error']['description']);
    }
    printLog(response.message);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      final cartModel = Provider.of<CartModel>(context, listen: false);
      final langCode = Provider.of<AppModel>(context, listen: false).langCode;
      final token = context.read<UserModel>().user?.cookie;
      Provider.of<PaymentMethodModel>(context, listen: false).getPaymentMethods(
          cartModel: cartModel,
          shippingMethod: cartModel.shippingMethod,
          token: token,
          langCode: langCode);

      if (kPaymentConfig.enableReview != true) {
        Provider.of<TaxModel>(context, listen: false).getTaxes(
            Provider.of<CartModel>(context, listen: false),
            Provider.of<UserModel>(context, listen: false).user?.cookie,
            (taxesTotal, taxes, isIncludingTax) {
          Provider.of<CartModel>(context, listen: false)
              .setTaxInfo(taxes, taxesTotal, isIncludingTax);
          setState(() {});
        });
      }
    });
  }

  void showSnackbar() {
    Tools.showSnackBar(
        ScaffoldMessenger.of(context), S.of(context).orderStatusProcessing);
  }

  Future<bool>? createBooking(BookingModel? bookingInfo) async {
    return Services().api.createBooking(bookingInfo)!;
  }

  Future<void> createOrderOnWebsite(
      {paid = false,
      bacs = false,
      cod = false,
      AdditionalPaymentInfo? additionalPaymentInfo,
      required Function(Order?) onFinish,
      bool hideLoading = true}) async {
    onLoading!(true);
    await Services().widget.createOrder(
      context,
      paid: paid,
      cod: cod,
      bacs: bacs,
      additionalPaymentInfo: additionalPaymentInfo,
      onLoading: onLoading,
      success: onFinish,
      error: (message) {
        Tools.showSnackBar(ScaffoldMessenger.of(context), message);
      },
    );
    if (hideLoading) {
      onLoading?.call(false);
    }
  }

  Future<void> _deletePendingOrder(String? orderId) async {
    try {
      final userModel = Provider.of<UserModel>(context, listen: false);
      await Services().api.deleteOrder(orderId, token: userModel.user?.cookie);
    } catch (_) {}
  }

  Future<void> createOrder(
      {paid = false,
      bacs = false,
      cod = false,
      AdditionalPaymentInfo? additionalPaymentInfo}) async {
    await createOrderOnWebsite(
        paid: paid,
        bacs: bacs,
        cod: cod,
        additionalPaymentInfo: additionalPaymentInfo,
        onFinish: (Order? order) async {
          if ((additionalPaymentInfo?.transactionId?.isNotEmpty ?? false) &&
              order != null) {
            await Services().api.updateOrderIdForRazorpay(
                additionalPaymentInfo?.transactionId, order.number);
          }
          onFinish!(order);
        });
  }

  void placeOrder(PaymentMethodModel paymentMethodModel, CartModel cartModel) {
    final currencyRate =
        Provider.of<AppModel>(context, listen: false).currencyRate;
    final cartModel = Provider.of<CartModel>(context, listen: false);

    onLoading!(true);
    isPaying = true;
    if (paymentMethodModel.paymentMethods.isNotEmpty) {
      final paymentMethod = paymentMethodModel.paymentMethods
          .firstWhere((item) => item.id == cartModel.paymentMethod?.id);

      var isSubscriptionProduct = cartModel.item.values.firstWhere(
              (element) =>
                  element?.type == 'variable-subscription' ||
                  element?.type == 'subscription',
              orElse: () => null) !=
          null;
      cartModel.setPaymentMethod(paymentMethod);

      Analytics.triggerAddPaymentInfo(paymentMethod.title, context);

      /// Use Native payment

      /// Direct bank transfer (BACS)

      if (!isSubscriptionProduct && paymentMethod.id!.contains('bacs')) {
        onLoading?.call(false);
        isPaying = false;

        final bodyForm = Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      S.of(context).cancel,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.red),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              HtmlWidget(
                paymentMethod.description!,
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
              const Expanded(child: SizedBox(height: 10)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  onLoading!(true);
                  isPaying = true;
                  Services().widget.placeOrder(
                    context,
                    cartModel: cartModel,
                    onLoading: onLoading,
                    paymentMethod: paymentMethod,
                    success: (Order? order) async {
                      if (order != null) {
                        for (var item in order.lineItems) {
                          var product =
                              cartModel.getProductById(item.productId!);
                          if (product?.bookingInfo != null) {
                            product!.bookingInfo!.idOrder = order.id;
                            var booking =
                                await createBooking(product.bookingInfo)!;

                            Tools.showSnackBar(
                                ScaffoldMessenger.of(context),
                                booking
                                    ? 'Booking success!'
                                    : 'Booking error!');
                          }
                        }
                        onFinish!(order);
                      }
                      onLoading?.call(false);
                      isPaying = false;
                    },
                    error: (message) {
                      onLoading?.call(false);
                      if (message != null) {
                        Tools.showSnackBar(
                            ScaffoldMessenger.of(context), message);
                      }
                      isPaying = false;
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Text(
                  S.of(context).ok,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
        if (Layout.isDisplayDesktop(context)) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 500,
                height: 500,
                padding: const EdgeInsets.all(10.0),
                child: bodyForm,
              ),
            ),
          );
          return;
        }

        showModalBottomSheet(
          context: context,
          builder: (sContext) => bodyForm,
        );

        return;
      }

      /// MercadoPago payment
      if (!isSubscriptionProduct &&
          isNotBlank(kMercadoPagoConfig['paymentMethodId']) &&
          paymentMethod.id!.contains(kMercadoPagoConfig['paymentMethodId']) &&
          kMercadoPagoConfig['enabled'] == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MercadoPagoPayment(
              onFinish: (number, paid) {
                if (number == null) {
                  onLoading?.call(false);
                  isPaying = false;
                  return;
                } else {
                  createOrder(paid: paid).then((value) {
                    onLoading?.call(false);
                    isPaying = false;
                  });
                }
              },
            ),
          ),
        );
        return;
      }

      /// RazorPay payment
      /// Check below link for parameters:
      /// https://razorpay.com/docs/payment-gateway/web-integration/standard/#step-2-pass-order-id-and-other-options
      if (!isSubscriptionProduct &&
          paymentMethod.id!.contains(kRazorpayConfig['paymentMethodId']) &&
          kRazorpayConfig['enabled'] == true) {
        Services().api.createRazorpayOrder({
          'amount': (PriceTools.getPriceValueByCurrency(cartModel.getTotal()!,
                      cartModel.currencyCode!, currencyRate) *
                  100)
              .toInt()
              .toString(),
          'currency': cartModel.currencyCode,
        }).then((value) {
          final razorServices = RazorServices(
            amount: (PriceTools.getPriceValueByCurrency(cartModel.getTotal()!,
                        cartModel.currencyCode!, currencyRate) *
                    100)
                .toInt()
                .toString(),
            keyId: kRazorpayConfig['keyId'],
            delegate: this,
            orderId: value,
            userInfo: RazorUserInfo(
              email: cartModel.address?.email,
              phone: cartModel.address?.phoneNumber,
              fullName:
                  '${cartModel.address?.firstName ?? ''} ${cartModel.address?.lastName ?? ''}'
                      .trim(),
            ),
          );
          razorServices.openPayment(cartModel.currencyCode!);
        }).catchError((e) {
          onLoading?.call(false);
          Tools.showSnackBar(ScaffoldMessenger.of(context), e);
          isPaying = false;
        });
        return;
      }

      /// PayTm payment.
      /// Check below link for parameters:
      /// https://developer.paytm.com/docs/all-in-one-sdk/hybrid-apps/flutter/
      final availablePayTm = kPayTmConfig['paymentMethodId'] != null &&
          (kPayTmConfig['enabled'] ?? false) &&
          paymentMethod.id!.contains(kPayTmConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availablePayTm) {
        createOrderOnWebsite(
            paid: false,
            onFinish: (Order? order) async {
              if (order != null) {
                final paytmServices = PayTmServices(
                  amount: cartModel.getTotal()!.toString(),
                  orderId: order.id!,
                  email: cartModel.address?.email,
                );
                try {
                  await paytmServices.openPayment();
                  onFinish!(order);
                } catch (e) {
                  Tools.showSnackBar(
                      ScaffoldMessenger.of(context), e.toString());
                  isPaying = false;
                  unawaited(_deletePendingOrder(order.id));
                }
              }
            });
        return;
      }

      /// PayStack payment.
      final availablePayStack = kPayStackConfig['paymentMethodId'] != null &&
          (kPayStackConfig['enabled'] ?? false) &&
          paymentMethod.id!.contains(kPayStackConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availablePayStack) {
        final isSupported =
            List.from(kPayStackConfig['supportedCurrencies'] ?? [])
                    .firstWhereOrNull((e) =>
                        e.toString().toLowerCase() ==
                        cartModel.currencyCode?.toLowerCase()) !=
                null;
        if (isSupported) {
          createOrderOnWebsite(
              paid: false,
              onFinish: (Order? order) async {
                if (order != null) {
                  final payStackServices = PayStackServices(
                    amount: order.total?.toString() ?? '',
                    orderId: order.id!,
                    email: cartModel.address?.email,
                  );
                  try {
                    await payStackServices.openPayment(context, onLoading!);
                    onFinish!(order);
                  } catch (e) {
                    Tools.showSnackBar(
                        ScaffoldMessenger.of(context), e.toString());
                    isPaying = false;
                    unawaited(_deletePendingOrder(order.id));
                  }
                }
              });
        } else {
          isPaying = false;
          onLoading?.call(false);
          Tools.showSnackBar(
              ScaffoldMessenger.of(context),
              S.of(context).currencyIsNotSupported(
                  cartModel.currencyCode?.toUpperCase() ?? ''));
        }
        return;
      }

      /// Flutterwave payment.
      final availableFlutterwave =
          kFlutterwaveConfig['paymentMethodId'] != null &&
              (kFlutterwaveConfig['enabled'] ?? false) &&
              paymentMethod.id!.contains(kFlutterwaveConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availableFlutterwave) {
        createOrderOnWebsite(
            paid: false,
            onFinish: (Order? order) async {
              if (order != null) {
                final flutterwaveServices = FlutterwaveServices(
                    amount: cartModel.getTotal()!.toString(),
                    orderId: order.id!,
                    email: cartModel.address?.email,
                    name: cartModel.address?.fullName,
                    phone: cartModel.address?.phoneNumber,
                    currency: cartModel.currencyCode!,
                    paymentMethod: paymentMethod.title);
                try {
                  await flutterwaveServices.openPayment(context, onLoading!);
                  onFinish!(order);
                } catch (e) {
                  Tools.showSnackBar(
                      ScaffoldMessenger.of(context), e.toString());
                  isPaying = false;
                  unawaited(_deletePendingOrder(order.id));
                }
              }
            });
        return;
      }

      /// Use WebView Payment per frameworks
      Services().widget.placeOrder(
        context,
        cartModel: cartModel,
        onLoading: onLoading,
        paymentMethod: paymentMethod,
        success: (Order? order) async {
          if (order != null) {
            for (var item in order.lineItems) {
              var product = cartModel.getProductById(item.productId!);
              if (product?.bookingInfo != null) {
                product!.bookingInfo!.idOrder = order.id;
                var booking = await createBooking(product.bookingInfo)!;

                Tools.showSnackBar(ScaffoldMessenger.of(context),
                    booking ? 'Booking success!' : 'Booking error!');
              }
            }
            onFinish!(order);
          }
          onLoading?.call(false);
          isPaying = false;
        },
        error: (message) {
          onLoading?.call(false);
          if (message != null) {
            Tools.showSnackBar(ScaffoldMessenger.of(context), message);
          }

          isPaying = false;
        },
      );
    }
  }
}
