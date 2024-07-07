import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../common/config/models/cart_config.dart';
import '../../../../common/tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../services/index.dart';
import '../../quantity_selection/quantity_selection.dart';
import '../cart_item_state_ui.dart';

final sizeRowCartItem = [
  null,
  100.0,
  180.0,
  100.0,
  100.0,
];

class CartItemWebWidget extends StatelessWidget {
  const CartItemWebWidget(
    this.stateUI, {
    super.key,
  });

  final CartItemStateUI stateUI;

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
              style: AttributeProductCartStyle.column,
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
        ],
      ),
    ];

    final items = [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: ImageResize(
                url: stateUI.imageFeature,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stateUI.product.name ?? '',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                ...infosWidget
              ],
            ),
          ),
        ],
      ),
      Text(
        stateUI.price!,
        style: TextStyle(
          color: theme.colorScheme.secondary,
          fontSize: 13,
        ),
      ),
      Align(
        alignment: AlignmentDirectional.centerStart,
        child: SizedBox(
          width: 127,
          height: 40,
          child: stateUI.enabledTextBoxQuantity
              ? QuantitySelection(
                  enabled: (stateUI.inStock || stateUI.isOnBackorder) &&
                      stateUI.onChangeQuantity != null,
                  height: 40,
                  width: 45,
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
                  style: QuantitySelectionStyle.style03,
                )
              : Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    stateUI.quantity?.toString() ?? '1',
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontSize: 13,
                    ),
                  ),
                ),
        ),
      ),
      Text(
        stateUI.priceWithQuantity!,
        style: TextStyle(
          color: theme.colorScheme.secondary,
          fontSize: 13,
        ),
      ),
      if (stateUI.onRemove != null && stateUI.enabledTextBoxQuantity)
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
                CupertinoIcons.delete,
                size: 18,
              ),
            ),
          ),
        ),
    ];

    return GestureDetector(
      key: ValueKey(stateUI.product.id),
      onTap: () => stateUI.onTapProduct(context, product: stateUI.product),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              items.length,
              (index) {
                final item = items[index];
                final size = index > (sizeRowCartItem.length - 1)
                    ? null
                    : sizeRowCartItem[index];
                if (size == null) {
                  return Expanded(child: item);
                }
                return SizedBox(width: size, child: item);
              },
            ),
          ),
        ),
      ),
    );
  }
}
