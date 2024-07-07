import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../models/index.dart' show PaymentMethod;
import '../../../services/index.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/html/index.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.paymentMethod,
    this.onSelected,
    this.selectedId,
    this.descWidget,
    this.useDesktopStyle = false,
  });

  final PaymentMethod paymentMethod;
  final Function(String?)? onSelected;
  final String? selectedId;
  final Widget? descWidget;
  final bool useDesktopStyle;

  @override
  Widget build(BuildContext context) {
    final isSelected = paymentMethod.id == selectedId;

    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            if (onSelected != null) onSelected!(paymentMethod.id);
          },
          child: Container(
            decoration: BoxDecoration(
              color: paymentMethod.id == selectedId
                  ? Theme.of(context).primaryColorLight
                  : Colors.transparent,
              borderRadius: useDesktopStyle ? BorderRadius.circular(10) : null,
              border: useDesktopStyle
                  ? Border.all(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.2),
                      width: 2,
                    )
                  : null,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Radio<String?>(
                        value: paymentMethod.id,
                        groupValue: selectedId,
                        onChanged: onSelected,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Builder(builder: (context) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  if (paymentMethod.title != null) ...[
                                    Flexible(
                                      fit: useDesktopStyle
                                          ? FlexFit.tight
                                          : FlexFit.loose,
                                      child: Services()
                                          .widget
                                          .renderShippingPaymentTitle(
                                              context, paymentMethod.title!),
                                    ),
                                    const SizedBox(width: 7),
                                  ],
                                  if (kPayments[paymentMethod.id] != null)
                                    FluxImage(
                                      imageUrl: kPayments[paymentMethod.id],
                                      height: 30,
                                    ),
                                ],
                              ),
                              if (paymentMethod.description != null)
                                if (paymentMethod.id == selectedId) ...[
                                  const SizedBox(height: 15),
                                  HtmlWidget(paymentMethod.description!),
                                ],
                            ],
                          );
                        }),
                      )
                    ],
                  ),
                  if (descWidget != null) descWidget!
                ],
              ),
            ),
          ),
        ),
        if (useDesktopStyle)
          const SizedBox(height: 15)
        else
          const Divider(height: 1)
      ],
    );
  }
}
