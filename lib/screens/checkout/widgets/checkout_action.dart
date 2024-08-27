import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/common/common_safe_area.dart';

class CheckoutActionWidget extends StatelessWidget {
  const CheckoutActionWidget({
    super.key,
    required this.labelPrimary,
    required this.labelSecondary,
    required this.iconPrimary,
    this.iconSecondary,
    this.onTapPrimary,
    this.onTapSecondary,
    this.showSecondary = true,
    this.showPrimary = true,
  });

  final String labelPrimary;
  final String labelSecondary;

  final IconData iconPrimary;
  final IconData? iconSecondary;

  final bool showSecondary;
  final bool showPrimary;

  final void Function()? onTapPrimary;
  final void Function()? onTapSecondary;

  @override
  Widget build(BuildContext context) {
    final bgButtonPrimary = Theme.of(context).primaryColor;

    final isDesktopLayout = Layout.isDisplayDesktop(context);

    Widget btnContinue = ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: bgButtonPrimary,
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      icon: Icon(
        iconPrimary,
        size: 18,
        color: bgButtonPrimary.getColorBasedOnBackground,
      ),
      onPressed: onTapPrimary,
      label: Text(
        overflow: TextOverflow.ellipsis,
        labelPrimary.toUpperCase(),
        maxLines: 2,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: bgButtonPrimary.getColorBasedOnBackground),
      ),
    );

    if (isDesktopLayout == false) {
      btnContinue = Expanded(child: btnContinue);
    }

    return CommonSafeArea(
      child: SizedBox(
        height: 45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showSecondary) ...[
              SizedBox(
                width: 150,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: onTapSecondary,
                  icon: iconSecondary != null
                      ? Icon(iconSecondary, size: 20)
                      : null,
                  label: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      labelSecondary.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ),
              ),
              if (showPrimary) const SizedBox(width: 8),
            ],
            if (showPrimary) btnContinue
          ],
        ),
      ),
    );
  }
}
