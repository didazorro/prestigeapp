import 'package:flutter/material.dart';
import 'package:fstore/common/constants.dart';

import 'views/signup_screen.dart';

class B2BKingRoute {
  static dynamic getRoutesWithSettings(RouteSettings settings) {
    final routes = {
      RouteList.b2bkingSignUp: (context) {
        return const B2BKingSignUpScreen();
      },
    };
    return routes;
  }
}
