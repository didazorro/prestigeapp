import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/order/order.dart';
import '../dynamic_layout/helper/helper.dart';
import 'widgets/re_order_item_list.dart';

mixin ReOderMixin {
  void reOrder(BuildContext context, Order order) async {
    var result;
    if (Layout.isDisplayDesktop(context)) {
      result = await showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 500,
              height: MediaQuery.sizeOf(context).height * 0.8,
              child: ReOrderItemList(
                lineItems: order.lineItems,
                b2bKingIsB2BOrder: order.b2bKingIsB2BOrder,
              ),
            ),
          );
        },
      );
    } else {
      result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        ),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
        ),
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return ReOrderItemList(
              lineItems: order.lineItems,
              b2bKingIsB2BOrder: order.b2bKingIsB2BOrder,
            );
          },
        ),
      );
    }

    if (result == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).yourOrderHasBeenAdded),
          duration: const Duration(seconds: 3),
        ),
      );
      await Navigator.of(context).pushNamed(RouteList.cart);
    }
  }
}
