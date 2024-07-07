import 'package:flutter/material.dart';

import '../app.dart';
import '../common/config.dart';
import '../menu/index.dart' show MainTabControlDelegate;
import '../models/index.dart' show Product, Category;

/// Push screen on TabBar
class FluxNavigate {
  static NavigatorState get _rootNavigator =>
      Navigator.of(App.fluxStoreNavigatorKey.currentContext!);

  static NavigatorState get _tabNavigator => Navigator.of(
      MainTabControlDelegate.getInstance().tabKey()!.currentContext!);

  static NavigatorState get _navigator =>
      kAdvanceConfig.alwaysShowTabBar ? _tabNavigator : _rootNavigator;

  static dynamic generateUri(arguments, routeName) {
    var id =
        arguments is Product || arguments is Category ? arguments.id : null;

    if (id != null) {
      return Uri(path: routeName, queryParameters: {'id': id}).toString();
    }
    return routeName;
  }

  static Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,

    /// Use current context to push screen on TabBar
    BuildContext? context,
    bool forceRootNavigator = false,
  }) {
    /// Override the routeName with new Uri format, support Web param
    routeName = generateUri(arguments, routeName);

    return _effectiveNavigator(
      context: context,
      forceRouteNavigator: forceRootNavigator,
    ).pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  static Future pushReplacementNamed(
    String routeName, {
    Object? arguments,
    BuildContext? context,
    bool forceRootNavigator = false,
  }) {
    return _effectiveNavigator(
      context: context,
      forceRouteNavigator: forceRootNavigator,
    ).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future pushNamedAndRemoveUntil(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
    BuildContext? context,
    bool forceRootNavigator = false,
  }) {
    return _effectiveNavigator(
      context: context,
      forceRouteNavigator: forceRootNavigator,
    ).pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  static Future<dynamic> push(
    Route<dynamic> route, {
    bool forceRootNavigator = false,
    BuildContext? context,
  }) {
    return _effectiveNavigator(
      context: context,
      forceRouteNavigator: forceRootNavigator,
    ).push(route);
  }

  static NavigatorState _effectiveNavigator({
    BuildContext? context,
    bool forceRouteNavigator = false,
  }) {
    if (forceRouteNavigator) {
      return _rootNavigator;
    }
    if (context != null) {
      return Navigator.of(context);
    }
    return _navigator;
  }
}
