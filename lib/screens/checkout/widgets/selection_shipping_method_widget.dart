import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';

import '../../../common/theme/colors.dart';
import '../../../common/tools/price_tools.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/shipping_method.dart';
import '../../../services/services.dart';
import '../../../widgets/common/index.dart';

class SelectionShippingMethodWidget extends StatelessWidget {
  const SelectionShippingMethodWidget({
    super.key,
    this.index,
    this.valueSelecled,
    this.onSelected,
    required this.shippingMethod,
    this.useDesktopStyle = false,
    this.isLast = false,
    this.isSelected = false,
    this.enable = true,
  });

  final int? index;
  final int? valueSelecled;
  final bool useDesktopStyle;
  final bool isLast;
  final bool enable;
  final bool isSelected;
  final void Function(int?)? onSelected;
  final ShippingMethod shippingMethod;

  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context, listen: false);
    final theme = Theme.of(context);

    /// Title
    final titleWidget = Services().widget.renderShippingPaymentTitle(
          context,
          shippingMethod.title!,
          isDesktop: useDesktopStyle,
        );

    /// Price
    Widget priceWidget = const SizedBox();
    if (shippingMethod.cost! > 0.0 || !isNotBlank(shippingMethod.classCost)) {
      priceWidget = Text(
        PriceTools.getCurrencyFormatted(
            shippingMethod.cost! + (shippingMethod.shippingTax ?? 0),
            cartModel.currencyRates,
            currency: cartModel.currencyCode)!,
        style: const TextStyle(
          fontSize: 14,
          color: kGrey400,
        ),
      );
    }

    /// classCost
    Widget classCost = const SizedBox();
    if (shippingMethod.cost == 0.0 && isNotBlank(shippingMethod.classCost)) {
      classCost = Text(
        shippingMethod.classCost!,
        style: const TextStyle(fontSize: 14, color: kGrey400),
      );
    }

    return GestureDetector(
      onTap: () => onSelected?.call(index),
      behavior: HitTestBehavior.translucent,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: useDesktopStyle
                  ? theme.colorScheme.surface
                  : (isSelected ? theme.primaryColorLight : Colors.transparent),
              borderRadius: useDesktopStyle ? BorderRadius.circular(10) : null,
              border: useDesktopStyle
                  ? Border.all(
                      color: isSelected
                          ? theme.primaryColor
                          : theme.colorScheme.secondary.withOpacity(0.2),
                      width: 2,
                    )
                  : null,
            ),
            margin: useDesktopStyle ? const EdgeInsets.only(bottom: 16) : null,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: <Widget>[
                  if (index != null)
                    Radio(
                      value: index,
                      groupValue: valueSelecled,
                      onChanged: (value) => onSelected?.call(value),
                    ),
                  const SizedBox(width: 10),
                  if (useDesktopStyle) ...[
                    const FluxImage(imageUrl: 'assets/icons/payment/truck.svg'),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        titleWidget,
                        classCost,
                      ],
                    ),
                    const Spacer(),
                    priceWidget
                  ] else
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          titleWidget,
                          const SizedBox(height: 5),
                          priceWidget,
                          classCost
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
          if (useDesktopStyle == false)
            isLast ? const SizedBox() : const Divider(height: 1)
        ],
      ),
    );
  }
}
