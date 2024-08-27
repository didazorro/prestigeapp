import 'package:flutter/material.dart';

import 'main_routes.dart';

class OpenAIRoutes {
  static Map<String, WidgetBuilder> _getAll(RouteSettings settings) => {
        ...MainRoutes.getAll(settings),
        // DashboardScreen.routeName: (context) {
        //   return AppMainFactory.create<DashboardScreen>(injector.get());
        // },
      };

  static Map<String, WidgetBuilder> getAll(RouteSettings settings) =>
      _getAll(settings);

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    if (routeName == null) {
      throw Exception('please check route name: $routeName');
    }

    final builder = _getAll(settings)[routeName];

    if (builder == null) {
      throw Exception('please check route builder: $builder');
    }

    if ([
      '/',
    ].contains(settings.name)) {
      return pageRouteBuilder(builder);
    }

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
      fullscreenDialog: routeName.contains('dialog'),
    );
  }

  static PageRouteBuilder pageRouteBuilder(WidgetBuilder? builder) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return builder!(context);
      },
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) {
        final tween =
            Tween(begin: const Offset(0.0, 1.0), end: Offset.zero).chain(
          CurveTween(curve: Curves.easeIn),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
