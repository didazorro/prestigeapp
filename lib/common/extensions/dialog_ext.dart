import 'package:flutter/material.dart';

import '../../app.dart';
import '../../widgets/common/flux_alert.dart';

/// This extension adds convenience methods to [BuildContext] for showing custom
/// dialogues.
/// It includes methods for showing a generic [FluxAlert], a text alert, and a
/// confirmation alert.
extension DialogExtension on BuildContext {
  /// Shows a [FluxAlert] dialog.
  ///
  /// The [dialog] parameter is the [FluxAlert] to be shown.
  ///
  /// Returns a [Future] that completes to the value (if any) that was passed
  /// to [Navigator.pop]
  /// when the dialog was closed.
  Future<bool?> showFluxDialog(FluxAlert dialog) {
    return showDialog<bool>(
      context: this,
      builder: (context) => _WrapperDialog(child: dialog),
    );
  }

  /// Shows a text alert dialog with the given [title], [body], [primaryAction], and [secondaryAction].
  ///
  /// The [title] parameter is the title of the alert.
  /// This is optional and can be null.
  /// The [body] parameter is the body content of the alert. This is optional and can be null.
  /// The [primaryAction] parameter is the primary action button of the alert. This is optional and can be null.
  /// The [secondaryAction] parameter is the secondary action button of the alert. This is optional and can be null.
  /// The [primaryAsDestructiveAction] parameter determines if the primary action is a destructive action. This is optional and defaults to false.
  /// The [directionButton] parameter determines the direction of the action buttons. This is optional and can be null.
  ///
  /// Returns a [Future] that completes to a boolean indicating whether the primary action was chosen.
  /// If the dialog is dismissed without choosing an action, this completes to `false`.
  Future<bool> showFluxDialogText({
    String? title,
    String? body,
    String? primaryAction,
    String? secondaryAction,
    bool primaryAsDestructiveAction = false,
    Axis? directionButton,
  }) async {
    return await showDialog<bool>(
          context: this,
          builder: (context) => _WrapperDialog(
            child: FluxAlert.text(
              title: title,
              body: body,
              primaryAction: primaryAction,
              secondaryAction: secondaryAction,
              primaryAsDestructiveAction: primaryAsDestructiveAction,
              directionButton: directionButton,
            ),
          ),
        ) ??
        false;
  }

  /// Shows a confirmation alert dialog with the given [title], [body],
  /// and [primaryAsDestructiveAction].
  ///
  /// Returns a [Future] that completes to a boolean indicating whether the primary action was chosen.
  /// If the dialog is dismissed without choosing an action, this completes to `false`.
  Future<bool> showFluxDialogConfirm({
    String? title,
    String? body,
    Axis? directionButton,
    bool primaryAsDestructiveAction = false,
    bool useAppNavigator = false,
  }) async =>
      await showDialog<bool>(
        context: useAppNavigator
            ? App.fluxStoreNavigatorKey.currentState!.context
            : this,
        builder: (context) => _WrapperDialog(
          child: FluxAlert.confirm(
            title: title,
            body: body,
            primaryAsDestructiveAction: primaryAsDestructiveAction,
            directionButton: directionButton,
          ),
        ),
      ) ??
      false;
}

/// A widget that wraps another widget with a [Dialog].
///
/// This is used to give the dialog a consistent appearance across different
/// types of alerts.
class _WrapperDialog extends StatelessWidget {
  /// Creates a [_WrapperDialog].
  ///
  /// The [child] parameter must not be null.
  const _WrapperDialog({
    required this.child,
  });

  /// The widget below this widget in the tree.
  final Widget child;

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
