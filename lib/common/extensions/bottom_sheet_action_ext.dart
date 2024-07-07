import 'package:flutter/material.dart';

import '../../app.dart';
import '../../widgets/common/flux_alert.dart';

/// This extension provides convenience methods to show different types of [FluxAlert] in a bottom sheet.
extension BottomSheetActionExtension on BuildContext {
  /// Shows a [FluxAlert] in a bottom sheet.
  ///
  /// The [dialog] parameter is the [FluxAlert] to be shown.
  /// Returns a [Future] that completes to the value (if any) that was passed
  /// to [Navigator.pop] when the dialog was closed.
  Future<bool?> showFluxBottomSheetAction(FluxAlert dialog) {
    return showDialog<bool>(
      context: this,
      builder: (context) => _WrapperBottomSheet(child: dialog),
    );
  }

  /// Shows a [FluxAlert] with text buttons in a bottom sheet.
  ///
  /// The [title], [body], [primaryAction], and [secondaryAction] parameters are
  /// all optional and are displayed as text in the dialog.
  ///
  /// If [primaryAsDestructiveAction] is set to [true], the primary action button
  /// will be styled as a destructive action.
  ///
  /// If [useAppNavigator] is set to [true], the [App.fluxStoreNavigatorKey]
  /// will be used as the context for the bottom sheet.
  ///
  /// Returns a [Future] that completes when the dialog is dismissed.
  Future<bool> showFluxBottomSheetActionText({
    String? title,
    String? body,
    String? primaryAction,
    String? secondaryAction,
    bool primaryAsDestructiveAction = false,
    bool useAppNavigator = false,
    Axis? directionButton,
  }) async {
    return await _commonModalBottomSheet<bool>(
          useAppNavigator: useAppNavigator,
          builder: (context) => _WrapperBottomSheet(
            child: FluxAlert.text(
              title: title,
              body: body,
              primaryAction: primaryAction,
              secondaryAction: secondaryAction,
              directionButton: directionButton,
              primaryAsDestructiveAction: primaryAsDestructiveAction,
            ),
          ),
        ) ??
        false;
  }

  /// Shows a [FluxAlert] with confirmation buttons in a bottom sheet.
  ///
  /// The [title] and [body] parameters are optional and are displayed as text
  /// in the dialog.
  ///
  /// If [primaryAsDestructiveAction] is set to [true], the primary action
  /// button will be styled as a destructive action.
  ///
  /// If [useAppNavigator] is set to [true], the [App.fluxStoreNavigatorKey]
  /// will be used as the context for the bottom sheet.
  ///
  /// Returns a [Future] that completes to the value (if any) that was passed
  /// to [Navigator.pop] when the dialog was closed.
  Future<bool> showFluxBottomSheetActionConfirm({
    String? title,
    String? body,
    Axis? directionButton,
    bool primaryAsDestructiveAction = false,
    bool useAppNavigator = false,
  }) async =>
      await _commonModalBottomSheet<bool>(
        useAppNavigator: useAppNavigator,
        builder: (context) => _WrapperBottomSheet(
          child: FluxAlert.confirm(
            title: title,
            body: body,
            primaryAsDestructiveAction: primaryAsDestructiveAction,
            directionButton: directionButton,
          ),
        ),
      ) ??
      false;

  /// Shows a modal bottom sheet with the specified builder.
  ///
  /// The [builder] parameter is a function that returns the widget to be shown
  /// in the bottom sheet.
  ///
  /// If [useAppNavigator] is set to [true], the [App.fluxStoreNavigatorKey]
  /// will be used as the context for the bottom sheet.
  ///
  /// Returns a [Future] that completes to the value (if any) that was passed
  /// to [Navigator.pop] when the dialog was closed.
  Future<T?> _commonModalBottomSheet<T>({
    required WidgetBuilder builder,
    required bool useAppNavigator,
  }) async {
    return showModalBottomSheet<T>(
      context:
          useAppNavigator ? App.fluxStoreNavigatorKey.currentContext! : this,
      backgroundColor: Theme.of(this).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: builder,
    );
  }
}

/// A wrapper widget for displaying content in a bottom sheet.
///
/// The [child] parameter is the widget to be displayed in the bottom sheet.
class _WrapperBottomSheet extends StatelessWidget {
  const _WrapperBottomSheet({
    required this.child,
  });

  final Widget child;

  /// Builds the [_WrapperBottomSheet] widget.
  ///
  /// The widget is displayed with a small grey bar at the top and the specified
  /// child widget below it.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Container(
            width: 50,
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
