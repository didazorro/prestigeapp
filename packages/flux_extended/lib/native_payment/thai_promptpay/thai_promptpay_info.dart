import 'package:flutter/material.dart';
import 'package:fstore/common/tools/tools.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/widgets/common/flux_image.dart';
import 'package:fstore/widgets/html/index.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'thai_promptpay_item.dart';

class ThaiPromptPayInfo extends StatelessWidget {
  const ThaiPromptPayInfo({
    super.key,
    required this.promptPayInfo,
    this.showThankMsg = true,
  });
  final ThaiPromptPayItem promptPayInfo;
  final bool showThankMsg;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Theme.of(context).primaryColorLight),
      child: Column(
        children: [
          if (showThankMsg && (promptPayInfo.thankMsg?.isNotEmpty ?? false))
            Column(
              children: [
                HtmlWidget('${promptPayInfo.thankMsg}'),
                const SizedBox(height: 10),
              ],
            ),
          const FluxImage(
            imageUrl: 'assets/icons/payment/prompt-pay-logo.png',
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 20),
          if (promptPayInfo.qrCode?.isNotEmpty ?? false)
            Column(
              children: [
                FluxImage(
                  imageUrl: '${promptPayInfo.qrCode}',
                  width: size.width / 2,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 10),
              ],
            ),
          if (promptPayInfo.id?.isNotEmpty ?? false)
            PromptPayWidget(
              label: S.of(context).promptPayID,
              value: '${promptPayInfo.id}',
            ),
          if (promptPayInfo.name?.isNotEmpty ?? false)
            PromptPayWidget(
              label: S.of(context).promptPayName,
              value: '${promptPayInfo.name}',
            ),
          if (promptPayInfo.type?.isNotEmpty ?? false)
            PromptPayWidget(
              label: S.of(context).promptPayType,
              value: '${promptPayInfo.type}',
            ),
          if (promptPayInfo.qrCode?.isNotEmpty ?? false)
            ElevatedButton(
              onPressed: () => _saveQRCode(context),
              child: Text(S.of(context).saveQRCode),
            )
        ],
      ),
    );
  }

  Future<void> _saveQRCode(BuildContext context) async {
    try {
      final response = await http.get(Uri.parse('${promptPayInfo.qrCode}'));
      final uint8list = response.bodyBytes;
      await ImageGallerySaver.saveImage(uint8list);

      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).qRCodeMsgSuccess);
    } catch (e) {
      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).qRCodeSaveFailure);
    }
  }
}

class PromptPayWidget extends StatelessWidget {
  final String label;
  final String value;

  const PromptPayWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(width: 10),
            Text(
              value,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
