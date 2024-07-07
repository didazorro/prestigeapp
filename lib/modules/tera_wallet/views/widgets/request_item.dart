import 'package:flutter/material.dart';

import '../../../../models/entities/tera_wallet/wallet_request.dart';
import '../../helpers/wallet_helpers.dart';
import 'request_status.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({super.key, required this.item});
  final WalletRequest item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Theme.of(context).dividerColor)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  WalletHelpers.parseNumberToCurrencyText(
                      double.tryParse(item.price ?? '') ?? 0.0),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                Text(item.payment ?? '')
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RequestStatus(status: item.status ?? ''),
              const SizedBox(height: 5),
              Text(
                item.time ?? '',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).disabledColor, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
