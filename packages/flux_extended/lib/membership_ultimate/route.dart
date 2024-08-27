import 'package:flutter/material.dart';

import 'package:fstore/common/constants.dart';
import 'package:inspireui/inspireui.dart';
import 'models/plan.dart';
import 'views/bankinfo_screen.dart';
import 'views/plans_screen.dart';
import 'views/signup_screen.dart';

class MembershipUltimateRoute {
  static dynamic getRoutesWithSettings(RouteSettings settings) {
    final routes = {
      RouteList.memberShipUltimatePlans: (context) => PlansScreen(),
      RouteList.memberShipUltimateSignUp: (context) {
        final arguments = settings.arguments;
        if (arguments is Plan) {
          return MembershipSignUpScreen(plan: arguments);
        }
        return const ErrorPage(message: 'planId is required');
      },
      RouteList.memberShipUltimateBankInfo: (context) {
        final arguments = settings.arguments;
        if (arguments is String) {
          return BankInfoScreen(bankInfo: arguments);
        }
        return const ErrorPage(message: 'bankInfo is required');
      },
    };
    return routes;
  }
}
