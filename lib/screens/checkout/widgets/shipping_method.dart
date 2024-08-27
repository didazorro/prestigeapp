import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart'
    show kAdvanceConfig, kLoadingWidget, kPaymentConfig;
import '../../../common/constants.dart';
import '../../../common/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/cart/cart_model.dart';
import '../../../models/entities/order_delivery_date.dart';
import '../../../models/shipping_method_model.dart';
import '../../../modules/analytics/analytics.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import 'checkout_action.dart';
import 'date_time_picker.dart';
import 'delivery_calendar.dart';
import 'selection_shipping_method_widget.dart';

class ShippingMethods extends StatefulWidget {
  final Function? onBack;
  final Function? onNext;

  const ShippingMethods({this.onBack, this.onNext});

  @override
  State<ShippingMethods> createState() => _ShippingMethodsState();
}

class _ShippingMethodsState extends State<ShippingMethods> {
  int? selectedIndex = 0;

  ShippingMethodModel get shippingMethodModel =>
      Provider.of<ShippingMethodModel>(context, listen: false);

  CartModel get cartModel => Provider.of<CartModel>(context, listen: false);

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () async {
        final shippingMethod = cartModel.shippingMethod;
        final shippingMethods = shippingMethodModel.shippingMethods;
        if (shippingMethods != null &&
            shippingMethods.isNotEmpty &&
            shippingMethod != null) {
          final index = shippingMethods
              .indexWhere((element) => element.id == shippingMethod.id);
          if (index > -1) {
            setState(() {
              selectedIndex = index;
            });
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Layout.isDisplayDesktop(context);

    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        if (isDesktop) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 20),
            child: Text(
              S.of(context).shippingMethod,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 28 / 18,
              ),
            ),
          ),
          _buildShippingBodyMethod(isDesktop),
        ] else
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      S.of(context).shippingMethod,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    _buildShippingBodyMethod(isDesktop),
                  ],
                ),
              ),
            ),
          ),
        _buildBottom(isDesktop),
      ],
    );
  }

  Widget _buildShippingBodyMethod(bool isDesktop) {
    return ListenableProvider.value(
      value: Provider.of<ShippingMethodModel>(context),
      child: Consumer<ShippingMethodModel>(
        builder: (context, model, child) {
          if (model.isLoading) {
            return SizedBox(height: 100, child: kLoadingWidget(context));
          }

          if (model.message != null) {
            return SizedBox(
              height: 100,
              child: Center(
                  child: Text(model.message!,
                      style: const TextStyle(color: kErrorRed))),
            );
          }

          if (model.shippingMethods?.isEmpty ?? true) {
            return Center(
              child: Image.asset(
                'assets/images/empty_shipping.png',
                width: 120,
                height: 120,
              ),
            );
          }

          return _buildShippingMethod(context, model, isDesktop);
        },
      ),
    );
  }

  Widget _buildShippingMethod(
      BuildContext context, ShippingMethodModel model, bool isDesktop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < model.shippingMethods!.length; i++)
          SelectionShippingMethodWidget(
            index: i,
            useDesktopStyle: isDesktop,
            isSelected: i == selectedIndex,
            shippingMethod: shippingMethodModel.shippingMethods![i],
            isLast: i < shippingMethodModel.shippingMethods!.length - 1,
            valueSelecled: selectedIndex,
            onSelected: (dynamic ind) {
              setState(() {
                selectedIndex = ind;
              });
            },
          ),
        const SizedBox(height: 20),
        buildDeliveryDate(),
      ],
    );
  }

  Widget _buildBottom(bool isDesktop) {
    final textButton = kPaymentConfig.enableReview
        ? S.of(context).continueToReview
        : S.of(context).continueToPayment;

    return CheckoutActionWidget(
      labelPrimary: textButton,
      iconPrimary: Icons.checklist,
      onTapPrimary: () async {
        // Prevent continue to preview when loading shipping method
        if (shippingMethodModel.isLoading) {
          return;
        }

        // Set selected shipping method
        if (shippingMethodModel.shippingMethods?.isNotEmpty ?? false) {
          final selectedShippingMethod =
              shippingMethodModel.shippingMethods![selectedIndex!];

          await cartModel.setShippingMethod(selectedShippingMethod);

          Analytics.triggerAddShippingInfo(
              cartModel.shippingMethod?.methodTitle, context);

          widget.onNext!();
          return;
        }

        // If this order doesn't need ship, we can go to the next step
        if ((shippingMethodModel.shippingMethods?.isEmpty ?? true) &&
            (shippingMethodModel.message?.isEmpty ?? true)) {
          widget.onNext!();
          return;
        }
      },
      showSecondary: kPaymentConfig.enableAddress,
      labelSecondary: S.of(context).goBack,
      onTapSecondary: () {
        widget.onBack!();
      },
    );
  }

  Widget buildDeliveryDate() {
    if (!(kAdvanceConfig.enableDeliveryDateOnCheckout)) {
      return const SizedBox();
    }

    Widget deliveryWidget = DateTimePicker(
      onChanged: (DateTime datetime) {
        final orderDeliveryDate = OrderDeliveryDate(datetime);
        orderDeliveryDate.dateString =
            DateFormat('dd-MM-yyyy HH:mm').format(datetime);
        cartModel.selectedDate = orderDeliveryDate;
      },
      minimumDate: DateTime.now(),
      initDate: cartModel.selectedDate?.dateTime,
      border: const OutlineInputBorder(),
    );

    if (shippingMethodModel.deliveryDates?.isNotEmpty ?? false) {
      deliveryWidget =
          DeliveryCalendar(dates: shippingMethodModel.deliveryDates!);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              right: Tools.isRTL(context) ? 12.0 : 0.0,
              left: !Tools.isRTL(context) ? 12.0 : 0.0),
          child: Text(S.of(context).deliveryDate,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .secondary
                      .withOpacity(0.7))),
        ),
        const SizedBox(height: 10),
        deliveryWidget,
        const SizedBox(height: 20),
      ],
    );
  }
}
