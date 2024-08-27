import 'package:flutter/material.dart';

import '../app.dart';
import '../common/config.dart';
import '../menu/index.dart' show MainTabControlDelegate;
import '../models/index.dart' show Product, Category;

/// A helper class for navigating between screens in a FluxStore application.
///
/// This class simplifies navigation in complex scenarios, especially when
/// the FluxStore app is embedded within another application (e.g., using FluxBuilder).
/// It intelligently manages the interaction between the root navigator and
/// the TabBar navigator, ensuring a consistent and reliable navigation experience.
///
/// Use the `FluxNavigate` class to:
/// - Push named routes onto the navigation stack.
/// - Replace the current route with a new named route.
/// - Push a named route and remove all routes until a specific condition is met.
/// - Push a custom `Route` onto the navigation stack.
///
/// For sensitive screens like payment or checkout, use the `forceRootNavigator`
/// option to ensure they are always pushed on the root navigator, even if the
/// app is configured to always show the TabBar.
class FluxNavigate {
  /// Returns the root navigator of the FluxStore app.
  static NavigatorState? get _rootNavigator {
    final context = App.fluxStoreNavigatorKey.currentContext;
    if (context == null) {
      return null;
    }
    return Navigator.maybeOf(context);
  }

  /// Returns the navigator associated with the TabBar.
  static NavigatorState? get _tabNavigator {
    final context =
        MainTabControlDelegate.getInstance().tabKey()?.currentContext;
    if (context == null) {
      return null;
    }
    return Navigator.maybeOf(context);
  }

  /// Returns the appropriate navigator based on the app configuration.
  /// If `kAdvanceConfig.alwaysShowTabBar` is true, it returns the TabBar navigator;
  /// otherwise, it returns the root navigator.
  static NavigatorState? get _navigator =>
      kAdvanceConfig.alwaysShowTabBar ? _tabNavigator : _rootNavigator;

  /// Generates a URI string for navigation, especially useful when passing
  /// product or category IDs.
  ///
  /// [arguments]: An object representing the navigation arguments (e.g., a `Product` or `Category` object).
  /// [routeName]: The name of the route to navigate to.
  /// Returns: A URI string representing the navigation target.
  static dynamic generateUri(arguments, routeName) {
    var id =
        arguments is Product || arguments is Category ? arguments.id : null;

    if (id != null) {
      return Uri(path: routeName, queryParameters: {'id': id}).toString();
    }
    return routeName;
  }

  /// Pushes a named route onto the navigation stack.
  ///
  /// [routeName]: The name of the route to navigate to.
  /// [arguments]: Optional arguments to pass to the destination route.
  /// [context]: Required BuildContext to check current navigator.
  /// [forceRootNavigator]: If `true`, forces the use of the root navigator,
  /// even if the app is configured to always show the TabBar.
  /// Returns: A `Future` that resolves to the result value from the pushed route.
  static Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
    required BuildContext context,
    bool forceRootNavigator = false,
  }) {
    /// Override the routeName with new Uri format, support Web param
    routeName = generateUri(arguments, routeName);

    return _effectiveNavigator(
          context: context,
          forceRootNavigator: forceRootNavigator,
        )?.pushNamed<T>(
          routeName,
          arguments: arguments,
        ) ??
        Future.value();
  }

  /// Replaces the current route with a new named route.
  ///
  /// [routeName]: The name of the route to navigate to.
  /// [arguments]: Optional arguments to pass to the destination route.
  /// [context]: Required BuildContext to check current navigator.
  /// [forceRootNavigator]: If `true`, forces the use of the root navigator,
  /// even if the app is configured to always show the TabBar.
  static Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? arguments,
    required BuildContext context,
    bool forceRootNavigator = false,
  }) {
    return _effectiveNavigator(
          context: context,
          forceRootNavigator: forceRootNavigator,
        )?.pushReplacementNamed(
          routeName,
          arguments: arguments,
        ) ??
        Future.value();
  }

  /// Pushes a named route and removes all routes until the given predicate returns `true`.
  ///
  /// [routeName]: The name of the route to navigate to.
  /// [predicate]: A function that takes a `Route` and returns a boolean
  /// indicating whether to remove it.
  /// [arguments]: Optional arguments to pass to the destination route.
  /// [context]: Required BuildContext to check current navigator.
  /// [forceRootNavigator]: If `true`, forces the use of the root navigator,
  /// even if the app is configured to always show the TabBar.
  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
    required BuildContext context,
    bool forceRootNavigator = false,
  }) {
    return _effectiveNavigator(
          context: context,
          forceRootNavigator: forceRootNavigator,
        )?.pushNamedAndRemoveUntil(
          routeName,
          predicate,
          arguments: arguments,
        ) ??
        Future.value();
  }

  /// Pushes a custom `Route` onto the navigation stack.
  ///
  /// [route]: The `Route` object to push.
  /// [forceRootNavigator]: If `true`, forces the use of the root navigator,
  /// even if the app is configured to always show the TabBar.
  /// [context]: Required BuildContext to check current navigator.
  static Future<T?> push<T extends Object?>(
    Route<T> route, {
    bool forceRootNavigator = false,
    required BuildContext context,
  }) {
    return _effectiveNavigator(
          context: context,
          forceRootNavigator: forceRootNavigator,
        )?.push(route) ??
        Future.value();
  }

  /// Determines the appropriate navigator to use based on the given context
  /// and `forceRouteNavigator` flag.
  ///
  /// [context]: Required BuildContext to check current navigator.
  /// [forceRouteNavigator]: If `true`, forces the use of the root navigator.
  /// Returns: The appropriate NavigatorState to use for navigation.
  static NavigatorState? _effectiveNavigator({
    required BuildContext context,
    bool forceRootNavigator = false,
  }) {
    final currentNavigator = Navigator.maybeOf(context);

    // Check if the current context is the root, return the root navigator.
    // Useful when you don't know if you're in fullscreen or tab screen.
    final isRootNavigator =
        currentNavigator == _rootNavigator && _rootNavigator != null;
    if (isRootNavigator || forceRootNavigator) {
      return _rootNavigator ?? currentNavigator;
    }

    return _navigator ?? currentNavigator;
  }
}
