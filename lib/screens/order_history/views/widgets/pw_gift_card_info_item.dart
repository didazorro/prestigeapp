import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/index.dart';

class PWGiftCardInfoItem extends StatelessWidget {
  final PWGiftCardInfo? pwGiftCardInfo;
  const PWGiftCardInfoItem(this.pwGiftCardInfo);

  @override
  Widget build(BuildContext context) {
    if (!kAdvanceConfig.enablePWGiftCard) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Builder(builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: S.of(context).from,
                children: [
                  const TextSpan(text: ': '),
                  TextSpan(text: '${pwGiftCardInfo?.from}'),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text: S.of(context).to,
                children: [
                  TextSpan(text: ': ${pwGiftCardInfo?.to}'),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text: S.of(context).message,
                children: [
                  const TextSpan(text: ': '),
                  TextSpan(text: '${pwGiftCardInfo?.message}'),
                ],
              ),
            ),
            if (pwGiftCardInfo?.numbers?.isNotEmpty ?? false) ...[
              const SizedBox(height: 5),
              Text.rich(
                TextSpan(
                  text: S.of(context).cardNumber,
                  children: [
                    const TextSpan(text: ': '),
                    TextSpan(
                      text: '${pwGiftCardInfo?.numbers?.join(', ')}',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ],
        );
      }),
    );
  }
}
