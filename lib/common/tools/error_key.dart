import 'package:flutter/widgets.dart';
import 'package:inspireui/inspireui.dart';

import '../../generated/l10n.dart';

enum ErrorKeyConstant {
  registerUnableToSyncAccount,
  registerInvalid,
  somethingWrong,
  unknown,
  ;

  String getMessage(BuildContext context) {
    switch (this) {
      case registerUnableToSyncAccount:
        return S.of(context).registerErrorSyncAccount;
      case registerInvalid:
        return S.of(context).registerInvalid;
      case somethingWrong:
        return S.of(context).somethingWrong;
      case unknown:
      default:
        return '';
    }
  }
}

extension StringErrorExt on String? {
  ErrorKeyConstant toErrorKey() {
    final error = (this ?? '').clearExceptionKey();

    return ErrorKeyConstant.values.firstWhere(
      (element) => element.name.toLowerCase() == error.toLowerCase(),
      orElse: () => ErrorKeyConstant.unknown,
    );
  }

  String getMessageError(BuildContext context) {
    final error = (this ?? '').toErrorKey();

    final errorMessage = error.getMessage(context);

    if (errorMessage.isEmpty) {
      return this?.clearExceptionKey() ?? '';
    }

    return errorMessage;
  }
}
