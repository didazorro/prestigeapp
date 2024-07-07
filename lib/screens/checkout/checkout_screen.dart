import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/config/models/cart_config.dart';
import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart' show CartModel, Order;
import '../../models/tera_wallet/wallet_model.dart';
import '../../modules/analytics/analytics.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/index.dart';
import '../../widgets/product/product_bottom_sheet.dart';
import '../../widgets/web_layout/web_layout.dart';
import '../base_screen.dart';
import '../cart/my_cart_layout/my_cart_normal_layout_web.dart';
import 'review_screen.dart';
import 'widgets/payment_methods.dart';
import 'widgets/shipping_address.dart';
import 'widgets/stepper_checkout_widet.dart';
import 'widgets/success.dart';

class CheckoutArgument {
  final bool? isModal;

  const CheckoutArgument({this.isModal});
}

class Checkout extends StatefulWidget {
  final bool? isModal;

  const Checkout({this.isModal});

  @override
  BaseScreen<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends BaseScreen<Checkout> {
  int tabIndex = 0;
  Order? newOrder;
  bool isPayment = false;
  bool isLoading = false;
  bool enabledShipping = kPaymentConfig.enableShipping;
  bool get isDesktop => Layout.isDisplayDesktop(context);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final cartModel = Provider.of<CartModel>(context, listen: false);
      Analytics.triggerBeginCheckout(context);
      setState(() {
        enabledShipping = cartModel.isEnabledShipping();
      });
    });
  }

  void setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }

  OrderSummaryStyle get summaryStyle {
    if (isDesktop) {
      switch (tabIndex) {
        case 0:
          return OrderSummaryStyle.webCheckoutShippingAddress;
        case 1:
          return OrderSummaryStyle.webCheckoutShippingMethod;
        case 2:
          return OrderSummaryStyle.webCheckoutReview;
        case 3:
          return OrderSummaryStyle.webCheckoutPayment;
        default:
          return OrderSummaryStyle.normal;
      }
    }
    return OrderSummaryStyle.normal;
  }

  @override
  void afterFirstLayout(BuildContext context) {
    if (!kPaymentConfig.enableAddress) {
      setState(() {
        tabIndex = 1;
      });
      if (!enabledShipping) {
        setState(() {
          tabIndex = 2;
        });
        if (!kPaymentConfig.enableReview) {
          setState(() {
            tabIndex = 3;
            isPayment = true;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget progressBar = Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        kPaymentConfig.enableAddress
            ? Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tabIndex = 0;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Text(
                          S.of(context).address.toUpperCase(),
                          style: TextStyle(
                              color: tabIndex == 0
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      tabIndex >= 0
                          ? ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(2.0),
                                  bottomLeft: Radius.circular(2.0)),
                              child: Container(
                                  height: 3.0,
                                  color: Theme.of(context).primaryColor),
                            )
                          : Divider(
                              height: 2,
                              color: Theme.of(context).colorScheme.secondary)
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        enabledShipping
            ? Expanded(
                child: GestureDetector(
                  onTap: () {
                    // if (cartModel.address != null &&
                    //     cartModel.address!.isValid()) {
                    //   setState(() {
                    //     tabIndex = 1;
                    //   });
                    // }
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Text(
                          S.of(context).shipping.toUpperCase(),
                          style: TextStyle(
                              color: tabIndex == 1
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      tabIndex >= 1
                          ? Container(
                              height: 3.0,
                              color: Theme.of(context).primaryColor)
                          : Divider(
                              height: 2,
                              color: Theme.of(context).colorScheme.secondary)
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        kPaymentConfig.enableReview
            ? Expanded(
                child: GestureDetector(
                  onTap: () {
                    // if (cartModel.shippingMethod != null) {
                    //   setState(() {
                    //     tabIndex = 2;
                    //   });
                    // }
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Text(
                          S.of(context).preview.toUpperCase(),
                          style: TextStyle(
                            color: tabIndex == 2
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      tabIndex >= 2
                          ? Container(
                              height: 3.0,
                              color: Theme.of(context).primaryColor)
                          : Divider(
                              height: 2,
                              color: Theme.of(context).colorScheme.secondary)
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // if (cartModel.shippingMethod != null) {
              //   setState(() {
              //     tabIndex = 3;
              //   });
              // }
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Text(
                    S.of(context).payment.toUpperCase(),
                    style: TextStyle(
                      color: tabIndex == 3
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.secondary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                tabIndex >= 3
                    ? ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(2.0),
                            bottomRight: Radius.circular(2.0)),
                        child: Container(
                            height: 3.0, color: Theme.of(context).primaryColor),
                      )
                    : Divider(
                        height: 2,
                        color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),
        )
      ],
    );
    var body = newOrder != null
        ? OrderedSuccess(
            order: newOrder,
            hasScroll: isDesktop == false,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              (!isPayment && isDesktop == false)
                  ? progressBar
                  : const SizedBox(),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: renderContent(),
                    ),
                    if (isDesktop)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 30),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    borderRadius: BorderRadius.circular(4),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: kGrey400.withOpacity(0.15),
                                        spreadRadius: 5,
                                      )
                                    ],
                                  ),
                                  child: OrderSummaryWidget(
                                    errMsg: '',
                                    isModal: false,
                                    style: summaryStyle,
                                    onBack: _checkoutOnBack,
                                    onFinish: _checkoutOnFinish,
                                    onLoading: setLoading,
                                    onNext: () {
                                      if (tabIndex == 2) {
                                        goToPaymentTab();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          );

    if (isDesktop) {
      body = SliverWebLayout(
        actionBuilder: () {
          return SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: MediaQuery.sizeOf(context).width * 0.1),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: StepperCheckoutWidget(
                  currentStep: tabIndex,
                  items: [
                    StepperCheckoutItem(
                      index: 0,
                      title: S.of(context).address,
                    ),
                    StepperCheckoutItem(
                      index: 1,
                      title: S.of(context).shipping,
                    ),
                    StepperCheckoutItem(
                      index: 2,
                      title: S.of(context).review.toTitleCase(),
                    ),
                    StepperCheckoutItem(
                      index: 3,
                      title: S.of(context).payment,
                    )
                  ],
                  width: MediaQuery.sizeOf(context).width * 0.4,
                ),
              ),
            ),
          );
        },
        slivers: [
          if (newOrder == null)
            SliverFillRemaining(
              hasScrollBody: false,
              child: LayoutLimitWidthScreen(child: body),
            )
          else
            SliverToBoxAdapter(
              child: LayoutLimitWidthScreen(child: body),
            ),
        ],
      );
    }

    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Theme.of(context)
              .colorScheme
              .surface
              .withOpacity(isDesktop ? 0.1 : 1),
          appBar: isDesktop
              ? null
              : AppBar(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  title: Text(
                    S.of(context).checkout,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  actions: <Widget>[
                    if (widget.isModal != null && widget.isModal == true)
                      IconButton(
                        icon: const Icon(Icons.close, size: 24),
                        onPressed: _onPressCloseButton,
                      ),
                  ],
                ),
          body: SafeArea(bottom: false, child: body),
        ),
        isLoading
            ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white.withOpacity(0.36),
                child: kLoadingWidget(context),
              )
            : const SizedBox()
      ],
    );
  }

  Widget renderContent() {
    switch (tabIndex) {
      case 0:
        return SizedBox(
          key: const ValueKey(0),
          child: ShippingAddress(onNext: () {
            Future.delayed(Duration.zero, goToShippingTab);
          }),
        );
      case 1:
        return SizedBox(
          key: const ValueKey(1),
          child: Services().widget.renderShippingMethods(context, onBack: () {
            goToAddressTab(true);
          }, onNext: () {
            goToReviewTab();
          }),
        );
      case 2:
        return SizedBox(
          key: const ValueKey(2),
          child: ReviewScreen(onBack: () {
            goToShippingTab(true);
          }, onNext: () {
            goToPaymentTab();
          }),
        );
      case 3:
      default:
        return SizedBox(
          key: const ValueKey(3),
          child: PaymentMethods(
            hideCheckout: isDesktop,
            onBack: _checkoutOnBack,
            onFinish: _checkoutOnFinish,
            onLoading: setLoading,
          ),
        );
    }
  }

  void _checkoutOnBack() {
    goToReviewTab(true);
  }

  void _checkoutOnFinish(order) async {
    final cartModel = Provider.of<CartModel>(context, listen: false);

    setState(() {
      newOrder = order;
    });

    Analytics.triggerPurchased(order, context);

    await Services().widget.updateOrderAfterCheckout(context, order);
    cartModel.clearCart();
    unawaited(context.read<WalletModel>().refreshWallet());

    if (isDesktop && order != null) {
      unawaited(Navigator.of(context)
          .pushNamed(RouteList.orderdSuccess, arguments: {'order': order}));
    }
  }

  /// tabIndex: 0
  void goToAddressTab([bool isGoingBack = false]) {
    if (kPaymentConfig.enableAddress) {
      setState(() {
        tabIndex = 0;
      });
    } else {
      if (!isGoingBack) {
        goToShippingTab(isGoingBack);
      }
    }
  }

  /// tabIndex: 1
  void goToShippingTab([bool isGoingBack = false]) {
    if (enabledShipping) {
      setState(() {
        tabIndex = 1;
      });
    } else {
      if (isGoingBack) {
        goToAddressTab(isGoingBack);
      } else {
        goToReviewTab(isGoingBack);
      }
    }
  }

  /// tabIndex: 2
  void goToReviewTab([bool isGoingBack = false]) {
    if (kPaymentConfig.enableReview) {
      setState(() {
        tabIndex = 2;
      });
    } else {
      if (isGoingBack) {
        goToShippingTab(isGoingBack);
      } else {
        goToPaymentTab(isGoingBack);
      }
    }
  }

  /// tabIndex: 3
  void goToPaymentTab([bool isGoingBack = false]) {
    if (!isGoingBack) {
      setState(() {
        tabIndex = 3;
      });
    }
  }

  void _onPressCloseButton() {
    if (Navigator.of(context).canPop()) {
      Navigator.popUntil(context,
          (Route<dynamic> route) => route.settings.name == RouteList.checkout);
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop(true);
      }
    } else {
      ExpandingBottomSheet.of(context, isNullOk: true)?.close();
    }
  }
}
