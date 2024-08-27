import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../generated/l10n.dart';

mixin ChatMixin<StatelessElement> {
  Widget errorIcon(void Function()? onReSend) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: IconButton(
        onPressed: () {
          onReSend?.call();
        },
        icon: const Icon(CupertinoIcons.repeat),
      ),
    );
  }

  void remove(BuildContext context, Function()? onRemove) {
    Widget cancelButton = TextButton(
      child: Text(S.of(context).cancel_openai),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    Widget continueButton = TextButton(
      child: Text(S.of(context).confirm_openai),
      onPressed: () {
        onRemove?.call();
        Navigator.pop(context);
      },
    );

    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (_) {
        return AlertDialog(
          title: Text(S.of(context).confirm_openai),
          content: Text(S.of(context).confirmDeleteItem_openai),
          actions: [
            continueButton,
            cancelButton,
          ],
        );
      },
    );
  }

  void share(BuildContext context, text) {
    final box = context.findRenderObject() as RenderBox?;
    Share.share(
      text,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  void copy(BuildContext context, text) {
    Clipboard.setData(ClipboardData(text: text)).then(
      (value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(S.of(context).copiedToClipboard_openai),
      )),
    );
  }
}
