import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../common/theme/colors.dart';
import '../../generated/l10n.dart';

/// [FluxAlert] is a custom alert dialog widget built with Flutter's [StatelessWidget].
/// It is designed to be flexible and easy to use, allowing for a variety of alert styles.
///
/// The [FluxAlert] also provides two named constructors [FluxAlert.text] and [FluxAlert.confirm] for creating text alerts and confirmation alerts respectively.
///
/// The [FluxAlert] widget builds a [Container] with a [Column] of children widgets that include the title, body, and action buttons.
class FluxAlert extends StatelessWidget {
// The constructor for the FluxAlert widget.
  const FluxAlert({
    super.key,

    /// A widget that represents the title of the alert.
    /// This is optional and can be null.
    this.title,

    /// A widget that represents the body content of the alert.
    /// This is optional and can be null.
    this.body,

    /// A widget that represents the primary action button of the alert.
    /// This is optional and can be null.
    this.primaryAction,

    /// A widget that represents the secondary action button of the alert.
    /// This is optional and can be null.
    this.secondaryAction,

    /// A boolean that determines if the primary action is a destructive action.
    /// This is optional and defaults to false.
    this.primaryAsDestructiveAction = false,

    /// An [Axis] that determines the direction of the action buttons.
    /// This is optional and defaults to [Axis.horizontal].
    Axis? directionButton,
  })  : assert(
          title != null || body != null,
          'Title or body must not be null',
        ),
        assert(
          secondaryAction != null || primaryAction != null,
          'Primary or secondary action must not be null',
        ),
        assert(
          directionButton == null ||
              (primaryAction != null && secondaryAction != null),
          'The direction button can only be set when both [primaryAction] and [secondaryAction] are not null.',
        ),
        directionButton = directionButton ?? Axis.horizontal;

  factory FluxAlert.text({
    String? title,
    String? body,
    String? primaryAction,
    String? secondaryAction,
    bool primaryAsDestructiveAction = false,
    Axis? directionButton,
  }) =>
      FluxAlert(
        title: title != null ? _Title(text: title) : null,
        body: body != null ? _Body(text: body) : null,
        primaryAction: primaryAction == null
            ? null
            : _PrimaryButton(
                text: primaryAction,
                primaryAsDestructiveAction: primaryAsDestructiveAction,
              ),
        secondaryAction: secondaryAction != null
            ? _SecondaryButton(text: secondaryAction)
            : null,
        directionButton: directionButton,
      );

  /// Factory constructor for creating a confirmation alert.
  factory FluxAlert.confirm({
    String? title,
    String? body,
    bool primaryAsDestructiveAction = false,
    Axis? directionButton,
  }) =>
      FluxAlert(
        title: title != null ? _Title(text: title) : null,
        body: body != null ? _Body(text: body) : null,
        primaryAction: _PrimaryButton(
          primaryAsDestructiveAction: primaryAsDestructiveAction,
        ),
        secondaryAction: const _SecondaryButton(),
        primaryAsDestructiveAction: primaryAsDestructiveAction,
        directionButton: directionButton,
      );

  /// The title of the alert.
  final Widget? title;

  /// The body content of the alert.
  final Widget? body;

  /// The primary action button of the alert.
  final Widget? primaryAction;

  /// The secondary action button of the alert.
  final Widget? secondaryAction;

  /// Determines if the primary action is a destructive action.
  final bool primaryAsDestructiveAction;

  /// Determines the direction of the action buttons.
  final Axis directionButton;

  /// Checks if the alert has a title.
  bool get hasTitle => title != null;

  /// Checks if the alert has body content.
  bool get hasBody => body != null;

  /// Checks if the alert has a primary action button.
  bool get hasPrimaryAction => primaryAction != null;

  /// Checks if the alert has a secondary action button.
  bool get hasSecondaryAction => secondaryAction != null;

  /// Builds the FluxAlert widget.
  @override
  Widget build(BuildContext context) {
    final buttonSize =
        WidgetStateProperty.all<Size>(const Size(double.infinity, 44));
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          if (hasTitle)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: title!,
            ),
          if (hasBody)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: body!,
            ),
          ElevatedButtonTheme(
            data: ElevatedButtonThemeData(
              style: theme.elevatedButtonTheme.style?.copyWith(
                minimumSize: buttonSize,
                textStyle: WidgetStatePropertyAll(
                  theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            child: OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                style: theme.outlinedButtonTheme.style?.copyWith(
                  minimumSize: buttonSize,
                  textStyle: WidgetStateProperty.all(
                    theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: directionButton == Axis.vertical
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (hasPrimaryAction) primaryAction!,
                          if (hasPrimaryAction && hasSecondaryAction)
                            const SizedBox(height: 12),
                          if (hasSecondaryAction) secondaryAction!,
                        ],
                      )
                    : Row(
                        children: [
                          if (hasSecondaryAction)
                            Expanded(child: secondaryAction!),
                          if (hasSecondaryAction && hasPrimaryAction)
                            const SizedBox(width: 12),
                          if (hasPrimaryAction) Expanded(child: primaryAction!),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A widget for the title of the alert.
class _Title extends StatelessWidget {
  const _Title({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

/// A widget for the body content of the alert.
class _Body extends StatelessWidget {
  const _Body({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

/// A widget for the primary action button of the alert.
class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({
    this.text,
    required this.primaryAsDestructiveAction,
  });

  final String? text;
  final bool primaryAsDestructiveAction;

  @override
  Widget build(BuildContext context) {
    final text = this.text ?? S.of(context).yes;

    return ElevatedButton(
      onPressed: () => Navigator.of(context).pop(true),
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryAsDestructiveAction ? kColorRed : null,
        textStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
      child: Text(
        text,
      ),
    );
  }
}

/// A widget for the secondary action button of the alert.
class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => Navigator.of(context).pop(false),
      child: Text(
        text ?? S.of(context).no,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
