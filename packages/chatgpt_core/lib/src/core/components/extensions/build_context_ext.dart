import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../generated/l10n.dart';
import '../../../../generated/languages/local_widgets_localizations.dart';

extension BuildContextExt on BuildContext {
  void showMessage(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void copyText(String clipboardData, {bool showNotice = true}) {
    Clipboard.setData(ClipboardData(text: clipboardData)).then((value) {
      if (showNotice) showMessage(S.of(this).copiedToClipboard_openai);
    });
  }

  void shareText(String text) {
    final box = findRenderObject() as RenderBox?;
    Share.share(
      text,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  Future<bool?> showConfirmDialog({
    String? title,
    String? content,
  }) {
    final translation = S.of(this);
    final effectiveTitle = title ?? translation.confirm_openai;
    final effectiveContent = content ?? translation.confirmDelete_openai;

    return showDialog(
      context: this,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(effectiveTitle),
          content: Text(effectiveContent),
          actions: [
            TextButton(
              child: Text(translation.confirm_openai),
              onPressed: () {
                Navigator.of(dialogContext).pop(true);
              },
            ),
            TextButton(
              child: Text(translation.cancel_openai),
              onPressed: () {
                Navigator.of(dialogContext).pop(false);
              },
            ),
          ],
        );
      },
    );
  }

  Future<bool?> showCupertinoConfirmDialog({
    String? title,
    String? content,
  }) {
    final translation = S.of(this);
    final effectiveTitle = title ?? translation.confirm_openai;
    final effectiveContent = content ?? translation.confirmDelete_openai;

    return showCupertinoDialog(
      context: this,
      builder: (BuildContext dialogContext) {
        return CupertinoAlertDialog(
          title: Text(effectiveTitle),
          content: Text(effectiveContent),
          actions: [
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () {
                Navigator.of(dialogContext).pop(true);
              },
              child: Text(translation.confirm_openai),
            ),
            CupertinoDialogAction(
              child: Text(translation.cancel_openai),
              onPressed: () {
                Navigator.of(dialogContext).pop(false);
              },
            ),
          ],
        );
      },
    );
  }

  Future<T?> showNoticeDialog<T>(String message) {
    return showCupertinoDialog(
      context: this,
      builder: (BuildContext dialogContext) {
        return CupertinoAlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  bool isRTL() {
    var languageCode = Localizations.localeOf(this).languageCode;

    return Bidi.isRtlLanguage(languageCode) ||
        LocalWidgetsLocalizations.isRtlLanguage(languageCode);
  }
}
