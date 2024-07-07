import 'package:flutter/cupertino.dart';

import '../../common/extensions/extensions.dart';
import '../../generated/l10n.dart';

mixin DeleteAccountMixin {
  Future<bool> showConfirmDeleteAccountDialog(BuildContext context) async {
    return context.showFluxDialogConfirm(
      title: S.of(context).deleteAccount,
      body: S.of(context).areYouSureDeleteAccount,
      primaryAsDestructiveAction: true,
    );
  }
}
