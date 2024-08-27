import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../common/tools/flash.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/app_model.dart';
import '../../../../models/cart/cart_base.dart';
import '../../../../models/entities/user.dart';
import '../../../../models/point_model.dart';
import '../../../../models/user_model.dart';
import '../../../../modules/vendor_on_boarding/screen_index.dart';
import '../../../../services/services.dart';

mixin RegistrationMixin<T extends StatefulWidget> on State<T> {
  final bool showPhoneNumberWhenRegister =
      kLoginSetting.showPhoneNumberWhenRegister;
  final bool requirePhoneNumberWhenRegister =
      kLoginSetting.requirePhoneNumberWhenRegister;

  final bool requireUsernameWhenRegister =
      kLoginSetting.requireUsernameWhenRegister;
  bool isChecked = true;

  Future<void> submitRegister({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? username,
    String? emailAddress,
    String? password,
    bool? isVendor,
  }) async {
    if (firstName == null ||
        lastName == null ||
        (requireUsernameWhenRegister && username == null) ||
        emailAddress == null ||
        password == null ||
        (showPhoneNumberWhenRegister &&
            requirePhoneNumberWhenRegister &&
            phoneNumber == null)) {
      _showMessage(S.of(context).pleaseInputFillAllFields);
    } else if (isChecked == false) {
      _showMessage(S.of(context).pleaseAgreeTerms);
    } else {
      if (!emailAddress.validateEmail()) {
        _showMessage(S.of(context).errorEmailFormat);
        return;
      }

      if (password.length < 8) {
        _showMessage(S.of(context).errorPasswordFormat);
        return;
      }

      await Provider.of<UserModel>(context, listen: false).createUser(
        username: username,
        email: emailAddress,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        success: _welcomeDiaLog,
        fail: _showMessage,
        isVendor: isVendor,
      );
    }
  }

  void _welcomeDiaLog(User user) {
    Provider.of<CartModel>(context, listen: false).setUser(user);
    Provider.of<PointModel>(context, listen: false).getMyPoint(user.cookie);
    final model = Provider.of<UserModel>(context, listen: false);

    /// Show VendorOnBoarding.
    if (kVendorConfig.vendorRegister &&
        Provider.of<AppModel>(context, listen: false).isMultivendor &&
        user.isVender) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => VendorOnBoarding(
            user: user,
            onFinish: () {
              model.getUser();
              var email = user.email;
              _showMessage(
                '${S.of(ctx).welcome} $email!',
                isError: false,
              );
              var routeFound = false;
              var routeNames = [RouteList.dashboard, RouteList.productDetail];
              Navigator.popUntil(ctx, (route) {
                if (routeNames.any((element) =>
                    route.settings.name?.contains(element) ?? false)) {
                  routeFound = true;
                }
                return routeFound || route.isFirst;
              });

              if (!routeFound) {
                Navigator.of(ctx).pushReplacementNamed(RouteList.dashboard);
              }
            },
          ),
        ),
      );
      return;
    }

    var email = user.email;
    _showMessage(
      '${S.of(context).welcome} $email!',
      isError: false,
    );
    if (Services().widget.isRequiredLogin) {
      Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
      return;
    }
    var routeFound = false;
    var routeNames = [RouteList.dashboard, RouteList.productDetail];
    Navigator.popUntil(context, (route) {
      if (routeNames
          .any((element) => route.settings.name?.contains(element) ?? false)) {
        routeFound = true;
      }
      return routeFound || route.isFirst;
    });

    // if (!routeFound) {
    //   Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
    // }
  }

  void _showMessage(
    String text, {
    bool isError = true,
  }) {
    if (!mounted) {
      return;
    }
    FlashHelper.message(
      context,
      message: text,
      isError: isError,
    );
  }
}
