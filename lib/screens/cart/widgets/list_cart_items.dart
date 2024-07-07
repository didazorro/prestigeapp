import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/extensions/extensions.dart';
import '../../../common/theme/colors.dart';
import '../../../generated/l10n.dart';
import '../../../models/cart/cart_base.dart';
import '../../../widgets/product/cart_item/cart_item_state_ui.dart';
import '../../../widgets/product/cart_item/layouts/cart_item_web_widget.dart';
import '../helpers/cart_items_helper.dart';

class ListCartBodyWidget extends StatelessWidget {
  const ListCartBodyWidget({
    super.key,
    required this.enabledTextBoxQuantity,
    this.enable = true,
    this.cartStyle,
  });

  final bool enabledTextBoxQuantity;
  final bool enable;
  final CartStyle? cartStyle;

  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context, listen: false);

    final titles = [
      Text(S.of(context).item.capitalize()),
      Text(S.of(context).prices),
      Text(S.of(context).quantity.capitalize()),
      Text(S.of(context).totalPrice),
      if (enable) const Text(''),
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrey200,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kGrey200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: List.generate(
                titles.length,
                (index) {
                  final item = titles[index];
                  final size = sizeRowCartItem[index];
                  if (size == null) {
                    return Expanded(child: item);
                  }

                  return SizedBox(
                    width: size,
                    child: item,
                  );
                },
              ),
            ),
          ),
          ...createShoppingCartRows(
            cartModel,
            context,
            enable && enabledTextBoxQuantity,
            cartStyle: cartStyle,
          ).expand((element) => [element, const Divider(height: 2)]).toList()
            ..removeLast(),
        ],
      ),
    );
  }
}
