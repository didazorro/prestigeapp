import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../common/tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/index.dart';
import '../../../../modules/re_order/reoder_mixin.dart';
import '../../../../services/index.dart';
import '../../index.dart';

class OrderListItemNew extends StatelessWidget with ReOderMixin {
  const OrderListItemNew();

  void _onTap(BuildContext context, OrderHistoryDetailModel model) {
    Navigator.of(context).pushNamed(
      RouteList.orderDetail,
      arguments: OrderDetailArguments(
        model: model,
        disableReview: !kReviewConfig.enableReview,
      ),
    );
  }

  String _getTitleStatus(String status, BuildContext context) {
    switch (status.toLowerCase()) {
      case 'onhold':
        return S.of(context).orderStatusOnHold;
      case 'pending':
        return S.of(context).orderStatusPendingPayment;
      case 'failed':
        return S.of(context).orderStatusFailed;
      case 'processing':
        return S.of(context).orderStatusProcessing;
      case 'completed':
        return S.of(context).orderStatusCompleted;
      case 'cancelled':
        return S.of(context).orderStatusCancelled;
      case 'refunded':
        return S.of(context).orderStatusRefunded;
      default:
        return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    final loggedIn = Provider.of<UserModel>(context).loggedIn;
    final subtitleStyle = Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 14.0,
        );
    final buttonStyle = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.w600);

    return Consumer<OrderHistoryDetailModel>(builder: (_, model, __) {
      final order = model.order;
      final isCompositeCart = order.lineItems.firstWhereOrNull(
              (e) => e.product?.isCompositeProduct ?? false) !=
          null;
      var statusOrderColor;
      switch (order.status!.content.toLowerCase()) {
        case 'pending':
          {
            statusOrderColor = Colors.red;
            break;
          }
        case 'processing':
          {
            statusOrderColor = Colors.orange;
            break;
          }
        case 'completed':
          {
            statusOrderColor = Colors.green;
            break;
          }
      }
      final currencyCode =
          order.currencyCode ?? Provider.of<AppModel>(context).currencyCode;

      return GestureDetector(
        onTap: () => _onTap(context, model),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.black12,
            //     offset: Offset(0, 1),
            //     blurRadius: 2,
            //   )
            // ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _getTitleStatus(order.status!.content, context)
                        .capitalize(),
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: statusOrderColor,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    S.of(context).createdOn +
                        DateFormat('d MMM, HH:mm').format(order.createdAt!),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.0,
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.8),
                        ),
                  ),
                  // SizedBox(
                  //   height: 32,
                  //   child: TextButton.icon(
                  //     onPressed: () => _onTap(context, model),
                  //     icon: const Icon(
                  //       Icons.rate_review,
                  //       size: 20,
                  //     ),
                  //     label: const Text('Rate',
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //           fontWeight: FontWeight.w700,
                  //         )),
                  //   ),
                  // ),
                ],
              ),
              // const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (order.lineItems.isNotEmpty &&
                      order.lineItems[0].featuredImage != null)
                    Stack(
                      children: [
                        const SizedBox(width: 92, height: 86),
                        if (order.lineItems.length > 1)
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Opacity(
                              opacity: 0.6,
                              child: Hero(
                                tag:
                                    'image-${order.id!}${order.lineItems[1].productId!}',
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                                  width: 80,
                                  height: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: ImageResize(
                                      url: order.lineItems[1].featuredImage ??
                                          kDefaultImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Hero(
                            tag:
                                'image-${order.id!}${order.lineItems[0].productId!}',
                            child: Container(
                              width: 85,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 2),
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: ImageResize(
                                  url: order.lineItems[0].featuredImage ??
                                      kDefaultImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  const SizedBox(width: 16),
                  if (order.lineItems.isNotEmpty)
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 2),
                          Text(
                            Bidi.stripHtmlIfNeeded(
                              order.lineItems[0].name.toString(),
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${S.of(context).orderNo}: ${order.number}',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 14.0,
                                    ),
                          ),
                          const SizedBox(height: 4),
                          // Display empty box if Order Address is null
                          order.billing != null
                              ? Text(
                                  '${S.of(context).shipping}: ${order.billing?.firstName} | ${order.billing?.city}, ${order.billing?.country}',
                                  style: subtitleStyle,
                                )
                              : const SizedBox(),
                          const SizedBox(height: 4),
                          Text.rich(
                            TextSpan(
                              text: S
                                  .of(context)
                                  .itemQuantity(order.totalQuantity),
                              children: [
                                const TextSpan(
                                  text: ' | ',
                                ),
                                TextSpan(
                                  text: '${S.of(context).total}: ',
                                ),
                                TextSpan(
                                  text: PriceTools.getCurrencyFormatted(
                                      order.total, null,
                                      currency: currencyCode),
                                  // style: Theme.of(context)
                                  //     .textTheme
                                  //     .titleMedium!
                                  //     .copyWith(
                                  //       fontSize: 12.0,
                                  //       fontWeight: FontWeight.w700,
                                  //     ),
                                ),
                              ],
                            ),
                            style: subtitleStyle,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => _onTap(context, model),
                      child: Text(
                        S.of(context).viewDetail,
                        style: buttonStyle,
                      ),
                    ),
                  ),
                  if (!isCompositeCart &&
                      loggedIn &&
                      ServerConfig().isSupportReorder) ...[
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => reOrder(context, order),
                        child: Text(
                          S.of(context).reOrder,
                          style: buttonStyle,
                        ),
                      ),
                    ),
                  ]
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
