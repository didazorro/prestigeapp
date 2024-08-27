import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flux_extended/index.dart';
import 'package:flux_extended/native_payment/first_iraqi_bank/services.dart';
import 'package:flux_extended/native_payment/thawani/index.dart';
import 'package:flux_extended/native_payment/xendit/services.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../common/config.dart';
import '../../../common/tools.dart';
import '../../../common/tools/flash.dart';
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
import '../../../modules/native_payment/paypal/index.dart';
import '../../../modules/native_payment/paystack/services.dart';
import '../../../modules/native_payment/paytm/services.dart';
import '../../../modules/native_payment/razorpay/services.dart';
import '../../../services/service_config.dart';
import '../../../services/services.dart';
import '../../../widgets/html/index.dart';

mixin CheckoutMixin<T extends StatefulWidget> on State<T>, RazorDelegate {
  bool isPaying = false;
  String? selectedId;

  Function? get onBack;
  Function? get onFinish;
  Function(bool)? get onLoading;

  late final AppLifecycleListener _listener;
  final FIBServices _fibServices = FIBServices();

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

      _listener = AppLifecycleListener(
        onResume: () {
          _fibServices.checkPaymentStatus(
              onComplete: (bool success, Order order) {
            isPaying = false;
            onLoading?.call(false);
            if (success) {
              onFinish!(order);
            } else {
              unawaited(_deletePendingOrder(order.id));
            }
          }, onLoading: (bool loading) {
            isPaying = false;
            onLoading?.call(loading);
          });
        },
      );
    });
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
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

      /// PayPal Payment
      if (!isSubscriptionProduct &&
          isNotBlank(kPaypalExpressConfig['paymentMethodId']) &&
          paymentMethod.id!.contains(kPaypalExpressConfig['paymentMethodId']) &&
          kPaypalExpressConfig['enabled'] == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaypalPayment(
              isExpressCheckout: true,
              onFinish: (payerID, paymentToken, paymentId) {
                if (payerID == null) {
                  onLoading?.call(false);
                  isPaying = false;
                  return;
                } else {
                  createOrder(
                    paid: true,
                    additionalPaymentInfo: AdditionalPaymentInfo(
                      ppPayerId: payerID,
                      ppPaymentToken: paymentToken,
                      ppPaymentId: paymentId,
                    ),
                  ).then((value) {
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
      if (!isSubscriptionProduct &&
          isNotBlank(kPaypalConfig['paymentMethodId']) &&
          paymentMethod.id!.contains(kPaypalConfig['paymentMethodId']) &&
          kPaypalConfig['enabled'] == true) {
        if (kPaypalConfig['nativeMode'] ?? false) {
          PayPalNative().checkout(
            cartModel: cartModel,
            currency: context.read<AppModel>().currency,
            currencyRate: currencyRate,
            callback: PPCheckoutCallback(
              onApprove: (approveData) async {
                try {
                  await createOrder(
                          paid: true,
                          additionalPaymentInfo: AdditionalPaymentInfo(
                              ppPayerId: approveData.payerId,
                              ppPaymentId: approveData.paymentId))
                      .then((value) {
                    onLoading?.call(false);
                    isPaying = false;
                  });
                } catch (e) {
                  isPaying = false;
                  onLoading?.call(false);
                }
              },
              onCancel: () {
                onLoading?.call(false);
                isPaying = false;
              },
              onError: (error) {
                onLoading?.call(false);
                isPaying = false;
              },
            ),
          );
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaypalPayment(
              isExpressCheckout: false,
              onFinish: (payerID, paymentToken, paymentId) {
                if (payerID == null) {
                  onLoading?.call(false);
                  isPaying = false;
                  return;
                } else {
                  createOrder(
                    paid: true,
                    additionalPaymentInfo: AdditionalPaymentInfo(
                      ppPayerId: payerID,
                      ppPaymentToken: paymentToken,
                      ppPaymentId: paymentId,
                    ),
                  ).then((value) {
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

      /// Tap Payment
      if (!isSubscriptionProduct &&
          isNotBlank(kTapConfig['paymentMethodId']) &&
          paymentMethod.id!.contains(kTapConfig['paymentMethodId']) &&
          kTapConfig['enabled'] == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TapPayment(
                    amount: PriceTools.getPriceByRate(
                        cartModel.getTotal(), currencyRate,
                        currency: cartModel.currencyCode)!,
                    currency: cartModel.currencyCode,
                    address: cartModel.address,
                    onSuccess: (String number) {
                      createOrder(
                              paid: true,
                              additionalPaymentInfo:
                                  AdditionalPaymentInfo(transactionId: number))
                          .then((value) {
                        onLoading?.call(false);
                        isPaying = false;
                      });
                    },
                    onError: (String? errMsg) {
                      isPaying = false;
                      onLoading?.call(false);
                      if (errMsg?.isNotEmpty ?? false) {
                        FlashHelper.errorMessage(
                          context,
                          message: errMsg ?? '',
                        );
                      }
                    },
                  )),
        );
        return;
      }

      /// Stripe payment
      if (!isSubscriptionProduct &&
          [
            ...(kStripeConfig['paymentMethodIds'] ?? []),
            kStripeApplePayMethod,
            kStripeGooglePayMethod,
          ].contains(paymentMethod.id) &&
          kStripeConfig['enabled'] == true) {
        Future<void> makePayment(
            {required Function(String?) onSuccess, orderId}) async {
          try {
            final totalPrice = PriceTools.getPriceByRate(
                cartModel.getTotal(), currencyRate,
                currency: cartModel.currencyCode)!;
            final appModel = Provider.of<AppModel>(context, listen: false);
            final currencyCode = appModel.currencyCode!;
            final finalPrice =
                (totalPrice * PriceTools.getStripeSmallestUnit(currencyCode))
                    .round()
                    .toStringAsFixed(0);
            final success = await StripeServicesV2().handlePayment(
              context,
              orderId: orderId,
              totalPrice: finalPrice,
              applePayPrice: totalPrice.toStringAsFixed(2),
              useApplePay: paymentMethod.id == kStripeApplePayMethod,
              useGooglePay: paymentMethod.id == kStripeGooglePayMethod,
              currencyCode: currencyCode,
              emailAddress: cartModel.address?.email ?? '',
              name:
                  '${cartModel.address?.firstName} ${cartModel.address?.lastName}'
                      .trim(),
              color: Theme.of(context).primaryColor,
              darkMode: Provider.of<AppModel>(context, listen: false).darkTheme,
              address: cartModel.address,
              cookie: ServerConfig().isWooType &&
                      (kStripeConfig['saveCardAfterCheckout'] ?? false)
                  ? cartModel.user?.cookie
                  : null,
            );

            if (!success) {
              unawaited(
                FlashHelper.errorMessage(
                  context,
                  message: S.of(context).transactionFailed,
                ),
              );
              isPaying = false;
              onLoading?.call(false);
              unawaited(_deletePendingOrder(orderId));
              return;
            }

            onSuccess.call(null);
          } on StripeException catch (e) {
            unawaited(
              FlashHelper.errorMessage(
                context,
                message:
                    e.error.localizedMessage ?? S.of(context).transactionFailed,
              ),
            );
            isPaying = false;
            onLoading?.call(false);
            unawaited(_deletePendingOrder(orderId));
          } on PlatformException catch (e) {
            unawaited(
              FlashHelper.errorMessage(
                context,
                message: e.message ?? S.of(context).transactionCancelled,
              ),
            );
            isPaying = false;
            onLoading?.call(false);
            unawaited(_deletePendingOrder(orderId));
          } catch (e) {
            unawaited(
              FlashHelper.errorMessage(
                context,
                message: e.toString(),
              ),
            );
            isPaying = false;
            onLoading?.call(false);
            unawaited(_deletePendingOrder(orderId));
          }
        }

        // It will need to make payment before creating an order on your website
        final cannotUpdateOrderStatusList = ['magento'];

        if (cannotUpdateOrderStatusList.contains(serverConfig['type'])) {
          Future.microtask(() async {
            await makePayment(
              onSuccess: (transactionId) async {
                await createOrder(
                        paid: true,
                        additionalPaymentInfo:
                            AdditionalPaymentInfo(transactionId: transactionId))
                    .then((value) {
                  onLoading?.call(false);
                  isPaying = false;
                });
              },
            );
          });
          return;
        }

        // Firstly, create an order for the stripe webhook.
        // Then try to update order status after successful payment in case webhook doesn't work
        createOrderOnWebsite(
          paid: false,
          onFinish: (Order? order) async {
            final orderId = order?.id;
            if (orderId != null) {
              await makePayment(
                orderId: orderId,
                onSuccess: (transactionId) async {
                  final token = context.read<UserModel>().user?.cookie;
                  try {
                    await Services().api.updateOrder(orderId,
                        status: 'processing', token: token);
                  } catch (e, trace) {
                    printError('updateOrder: $e', trace);
                  }

                  onLoading?.call(false);
                  isPaying = false;
                  onFinish?.call(order);
                },
              );
            }
          },
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

      /// Midtrans payment.
      final availableMidtrans = kMidtransConfig['paymentMethodId'] != null &&
          (kMidtransConfig['enabled'] ?? false) &&
          paymentMethod.id!.contains(kMidtransConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availableMidtrans) {
        createOrderOnWebsite(
            paid: false,
            hideLoading: false,
            onFinish: (Order? order) async {
              if (order != null) {
                final midtransServices = MidtransServices(
                    amount: cartModel.getTotal()!.toString(),
                    orderId: order.id!,
                    currency: cartModel.currencyCode!.toUpperCase(),
                    onCallback: (bool success) {
                      if (success) {
                        onFinish!(order);
                      } else {
                        isPaying = false;
                        unawaited(_deletePendingOrder(order.id));
                      }
                    })
                  ..initSDK(context);
                try {
                  await midtransServices.openPayment((bool loading) {
                    onLoading?.call(loading);
                  });
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

      final availableMyFatoorah =
          kMyFatoorahConfig['paymentMethodId'] != null &&
              (kMyFatoorahConfig['enabled'] ?? false) &&
              paymentMethod.id!.contains(kMyFatoorahConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availableMyFatoorah) {
        createOrderOnWebsite(
            paid: false,
            onFinish: (Order? order) async {
              if (order != null) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFatoorahScreen(
                      amount: PriceTools.getPriceByRate(
                          cartModel.getTotal(), currencyRate,
                          currency: cartModel.currencyCode)!,
                      currency: cartModel.currencyCode,
                      customerName: cartModel.address?.fullName ?? '',
                      customerAddress: cartModel.address?.fullAddress ?? '',
                      customerMobile: cartModel.address?.phoneNumber ?? '',
                      customerEmail: cartModel.address?.email ?? '',
                      orderID: order.id,
                      onFinish: (String? paymentId) {
                        onLoading?.call(false);
                        isPaying = false;
                        if (paymentId != null) {
                          onFinish!(order);
                        } else {
                          unawaited(_deletePendingOrder(order.id));
                        }
                      },
                    ),
                  ),
                );
              }
            });

        return;
      }

      /// Xendit payment.
      final availableXendit = kXenditConfig['paymentMethodId'] != null &&
          (kXenditConfig['enabled'] ?? false) &&
          paymentMethod.id!.contains(kXenditConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availableXendit) {
        if (cartModel.currencyCode?.toUpperCase() != 'IDR' &&
            cartModel.currencyCode?.toUpperCase() != 'PHP') {
          isPaying = false;
          onLoading?.call(false);
          return Tools.showSnackBar(
              ScaffoldMessenger.of(context),
              S.of(context).currencyIsNotSupported(
                  cartModel.currencyCode?.toUpperCase() ?? ''));
        }
        var errMsg = XenditServices().checkMinMaxAmount(
            cartModel.getTotal() ?? 0, cartModel.currencyCode ?? '');
        if (errMsg?.isNotEmpty ?? false) {
          isPaying = false;
          onLoading?.call(false);
          return Tools.showSnackBar(ScaffoldMessenger.of(context), errMsg);
        }
        createOrderOnWebsite(
            paid: false,
            hideLoading: false,
            onFinish: (Order? order) async {
              if (order != null) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => XenditPayment(
                            orderId: order.id ?? '',
                            email: cartModel.address?.email ?? '',
                            amount: PriceTools.getPriceByRate(
                                cartModel.getTotal(), currencyRate,
                                currency: cartModel.currencyCode)!,
                            currency: cartModel.currencyCode ?? '',
                            onFailed: () {
                              onLoading?.call(false);
                              isPaying = false;
                              unawaited(_deletePendingOrder(order.id));
                            },
                            onComplete: () {
                              onLoading?.call(false);
                              isPaying = false;
                              onFinish!(order);
                            },
                          )),
                );
              }
            });
        return;
      }

      /// ExpressPay payment.
      final isExpressPayApplePay = paymentMethod.id == 'expresspay_apple_pay';
      final availableExpressPay = kExpressPayConfig['paymentMethodId'] !=
              null &&
          (kExpressPayConfig['enabled'] ?? false) &&
          (paymentMethod.id!.contains(kExpressPayConfig['paymentMethodId']) ||
              isExpressPayApplePay);
      if (!isSubscriptionProduct && availableExpressPay) {
        var errMessage = ExpressPayHelper.validateCheckout(context, cartModel);
        if (errMessage?.isNotEmpty ?? false) {
          isPaying = false;
          onLoading?.call(false);
          return Tools.showSnackBar(ScaffoldMessenger.of(context), errMessage);
        }

        createOrderOnWebsite(
            paid: false,
            hideLoading: false,
            onFinish: (Order? order) async {
              if (order != null) {
                final expressPayServices = ExpressPayServices(
                    amount: order.total ?? 0,
                    orderId: order.id!,
                    currency: cartModel.currencyCode ?? '',
                    onCancel: () {
                      onLoading?.call(false);
                      isPaying = false;
                      unawaited(_deletePendingOrder(order.id));
                    },
                    onFail: (String errMsg) {
                      onLoading?.call(false);
                      isPaying = false;
                      unawaited(_deletePendingOrder(order.id));
                      Tools.showSnackBar(ScaffoldMessenger.of(context), errMsg);
                    },
                    onSuccess: () {
                      onLoading?.call(false);
                      onFinish!(order);
                    })
                  ..initSDK(context);
                if (isExpressPayApplePay) {
                  isPaying = false;
                  onLoading?.call(false);
                }
                expressPayServices.openPayment(context,
                    isApplePay: isExpressPayApplePay);
              }
            });
        return;
      }

      /// FIB payment.
      final availableFIB = kFIBConfig['paymentMethodId'] != null &&
          (kFIBConfig['enabled'] ?? false) &&
          paymentMethod.id!.contains(kFIBConfig['paymentMethodId']);
      if (!isSubscriptionProduct && availableFIB) {
        createOrderOnWebsite(
            paid: false,
            hideLoading: false,
            onFinish: (Order? order) async {
              if (order != null) {
                try {
                  await _fibServices.createPayment(
                      amount: cartModel.getTotal()!.toString(),
                      order: order,
                      currency: cartModel.currencyCode ?? 'usd',
                      onLoading: (bool loading) {
                        isPaying = false;
                        onLoading?.call(loading);
                      });
                } catch (e) {
                  Tools.showSnackBar(
                      ScaffoldMessenger.of(context), e.toString());
                  unawaited(_deletePendingOrder(order.id));
                }
              }
            });
        return;
      }

      /// Thawani payment.
      final availableThawani = kThawaniConfig['paymentMethodId'] != null &&
          (kThawaniConfig['enabled'] ?? false) &&
          (kThawaniConfig['paymentMethodId']!.contains(paymentMethod.id) ||
              paymentMethod.id!.contains(kThawaniConfig['paymentMethodId']));
      if (!isSubscriptionProduct && availableThawani) {
        if (cartModel.currencyCode?.toUpperCase() != 'OMR') {
          isPaying = false;
          onLoading?.call(false);
          return Tools.showSnackBar(
              ScaffoldMessenger.of(context),
              S.of(context).currencyIsNotSupported(
                  cartModel.currencyCode?.toUpperCase() ?? ''));
        }
        createOrderOnWebsite(
            paid: false,
            hideLoading: false,
            onFinish: (Order? order) async {
              if (order != null) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThawaniPayment(
                            orderId: order.id ?? '',
                            email: cartModel.address?.email ?? '',
                            amount: order.total ?? 0.0,
                            onFailed: () {
                              onLoading?.call(false);
                              isPaying = false;
                              unawaited(_deletePendingOrder(order.id));
                            },
                            onComplete: () {
                              onLoading?.call(false);
                              isPaying = false;
                              onFinish!(order);
                            },
                          )),
                );
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
