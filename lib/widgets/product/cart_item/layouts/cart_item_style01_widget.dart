import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../common/config/models/cart_config.dart';
import '../../../../common/theme/colors.dart';
import '../../../../common/tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../services/index.dart';
import '../../quantity_selection/quantity_selection.dart';
import '../cart_item_state_ui.dart';

const _kMinHeightCard = 110.0;

class CartItemStyle01Widget extends StatelessWidget {
  const CartItemStyle01Widget(this.stateUI,
      {super.key, required this.constraintsCurrent});

  final CartItemStateUI stateUI;
  final BoxConstraints constraintsCurrent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final infosWidget = [
      if (stateUI.product.options != null &&
          stateUI.cartItemMetaData?.options != null)
        Services().widget.renderOptionsCartItem(
            stateUI.product, stateUI.cartItemMetaData?.options),
      if (stateUI.cartItemMetaData?.variation != null)
        Services().widget.renderVariantCartItem(
              context,
              stateUI.cartItemMetaData!.variation!,
              stateUI.cartItemMetaData?.options,
              style: AttributeProductCartStyle.short,
            ),
      if (stateUI.cartItemMetaData?.addonsOptions?.isNotEmpty ?? false)
        Services().widget.renderAddonsOptionsCartItem(
            context, stateUI.cartItemMetaData?.addonsOptions),
      if (stateUI.product.store != null &&
          (stateUI.product.store?.name != null &&
              stateUI.product.store!.name!.trim().isNotEmpty))
        const SizedBox(height: 10),
      if (!stateUI.inStock || stateUI.isOnBackorder) const SizedBox(height: 5),
      if (stateUI.isOnBackorder)
        Text(S.of(context).backOrder,
            style: TextStyle(
              color: kStockColor.backorder,
            )),
      if (!stateUI.isOnBackorder && !stateUI.inStock)
        Text(
          S.of(context).outOfStock,
          style: const TextStyle(color: Colors.red),
        ),
      if (!stateUI.isOnBackorder &&
          stateUI.inStock &&
          stateUI.quantity != null &&
          stateUI.quantity! > stateUI.limitQuantity)
        Text(
          S.of(context).quantityProductExceedInStock,
          style: const TextStyle(color: Colors.red),
        ),
      Row(
        children: [
          if (stateUI.showStoreName &&
              (stateUI.product.store?.name?.isNotEmpty ?? false))
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  stateUI.product.store?.name ?? '',
                  style: TextStyle(
                      color: theme.colorScheme.secondary, fontSize: 12),
                ),
              ),
            )
          else
            const Spacer(),
          if (stateUI.showQuantity)
            QuantitySelection(
              enabled: (stateUI.inStock || stateUI.isOnBackorder) &&
                  stateUI.onChangeQuantity != null,
              width: 25,
              height: 25,
              quantityStep: stateUI.product.quantityStep,
              enabledTextBox: stateUI.enabledTextBoxQuantity,
              color: Theme.of(context).colorScheme.secondary,
              limitSelectQuantity: stateUI.isOnBackorder
                  ? kCartDetail['maxAllowQuantity']
                  : stateUI.limitQuantity,
              value: stateUI.quantity,
              onChanged: (value) {
                return stateUI.onChangeQuantity
                        ?.call(value == -1 ? 1 : value) ??
                    true;
              },
              style: QuantitySelectionStyle.style02,
            ),
        ],
      ),
      if (stateUI.isPWGiftCardProduct)
        Services().widget.renderPWGiftCardInfoCartItem(
              stateUI.cartItemMetaData?.pwGiftCardInfo,
              quantity: stateUI.quantity,
              price: stateUI.cartItemMetaData?.variation?.price,
            ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (stateUI.enableTopDivider == true)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Divider(color: kGrey200, height: 1),
          ),
        Row(
          key: ValueKey(stateUI.product.id),
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () =>
                    stateUI.onTapProduct(context, product: stateUI.product),
                child: Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  constraints: const BoxConstraints(
                    minHeight: _kMinHeightCard,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: ImageResize(
                              url: stateUI.imageFeature,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.symmetric(
                                      vertical: 5)
                                  .copyWith(end: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          stateUI.product.name ?? '',
                                          style: TextStyle(
                                            color: theme.colorScheme.secondary,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      if (stateUI.onRemove != null)
                                        GestureDetector(
                                          onTap: stateUI.onRemove,
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 35,
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 5,
                                              horizontal: 0,
                                            ).copyWith(left: 10),
                                            child: const Align(
                                              alignment: Alignment.topCenter,
                                              child: Icon(
                                                Icons.close_rounded,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  if (!Services().widget.hideProductPrice(
                                      context, stateUI.product))
                                    Text(
                                      stateUI.price!,
                                      style: TextStyle(
                                        color: theme.colorScheme.secondary,
                                        fontSize: 13,
                                      ),
                                    ),
                                  if (infosWidget.isNotEmpty)
                                    const SizedBox(height: 10),
                                  ...infosWidget,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (stateUI.cartItemMetaData?.selectedComponents
                              ?.isNotEmpty ??
                          false)
                        Services().widget.renderSelectedComponentsCartItem(
                            context,
                            stateUI.cartItemMetaData?.selectedComponents),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
