import 'package:flutter/material.dart';

import 'package:fstore/common/constants.dart';
import 'package:inspireui/inspireui.dart';

import 'models/invoice.dart';
import 'models/plan.dart';
import 'views/confirmation_screen.dart';
import 'views/plans_screen.dart';
import 'views/signup_screen.dart';

class PaidMembershipProRoute {
  static dynamic getRoutesWithSettings(RouteSettings settings) {
    final routes = {
      RouteList.paidMemberShipProPlans: (context) => PlansScreen(),
      RouteList.paidMemberShipProSignUp: (context) {
        final arguments = settings.arguments;
        if (arguments is Plan) {
          return MembershipSignUpScreen(plan: arguments);
        }
        return const ErrorPage(message: 'planId is required');
      },
      RouteList.paidMemberShipProConfirmation: (context) {
        final arguments = settings.arguments;
        if (arguments is Invoice) {
          return ConfirmationScreen(invoice: arguments);
        }
        return const ErrorPage(message: 'invoice is required');
      },
    };
    return routes;
  }
}
