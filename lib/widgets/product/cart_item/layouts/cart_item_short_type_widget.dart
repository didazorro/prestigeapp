import 'package:flutter/material.dart';

import '../../../../common/tools.dart';
import '../../../../generated/l10n.dart';
import '../cart_item_state_ui.dart';

const _kMinHeightCard = 60.0;

class CartItemShortTypeWidget extends StatelessWidget {
  const CartItemShortTypeWidget(
    this.stateUI, {
    super.key,
    required this.constraintsCurrent,
  });

  final CartItemStateUI stateUI;
  final BoxConstraints constraintsCurrent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => stateUI.onTapProduct(context, product: stateUI.product),
      child: SizedBox(
        height: _kMinHeightCard,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              width: _kMinHeightCard,
              height: _kMinHeightCard,
              child: ImageResize(
                url: stateUI.imageFeature,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stateUI.product.name ?? '',
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${S.of(context).quantity}: ${stateUI.quantity}',
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontSize: 11,
                    ),
                  ),
                  if (stateUI.showPrice(context))
                    Text(
                      stateUI.price!,
                      style: TextStyle(
                        color: theme.colorScheme.secondary,
                        fontSize: 11,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
