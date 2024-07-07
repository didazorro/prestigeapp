import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';

import '../../../../modules/re_order/reoder_mixin.dart';

class OrderListLoadingItemNew extends StatelessWidget with ReOderMixin {
  const OrderListLoadingItemNew();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 1,
          )
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Skeleton(
                width: 80,
                height: 16,
              ),
              Skeleton(
                width: 140,
                height: 16,
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
          Divider(),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Skeleton(
                width: 80,
                height: 80,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2),
                    Skeleton(
                      width: 180,
                      height: 16,
                    ),
                    SizedBox(height: 4),
                    Skeleton(
                      width: 90,
                      height: 14,
                    ),
                    SizedBox(height: 4),
                    // Display empty box if Order Address is null
                    Skeleton(
                      width: 130,
                      height: 14,
                    ),
                    SizedBox(height: 4),
                    Skeleton(
                      width: 75,
                      height: 14,
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Skeleton(
                  height: 40,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Skeleton(
                  height: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
