import 'package:flutter/material.dart';

import 'widgets/dialog_container_widget.dart';

const blurValue = 3.0;
const durationShowDialogAnimation = Duration(milliseconds: 400);
final tweenShowDialogAnimation = Tween<double>(begin: 0.0, end: blurValue);

Widget _transitionBuilderDialog(
  BuildContext _,
  a1,
  Animation<double> __,
  Widget child,
) {
  final value = tweenShowDialogAnimation.animate(a1);

  return Opacity(
    opacity: value.value / blurValue,
    child: child,
  );
  // return BackdropFilter(
  //   filter: ImageFilter.blur(sigmaX: value.value, sigmaY: value.value),
  //   child: Opacity(
  //     opacity: value.value / blurValue,
  //     child: child,
  //   ),
  // );
}

Future<bool?> showDialogApplicationWithIcon(
  BuildContext context,
  Widget icon, {
  String? content,
  bool isDismissible = false,
}) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: isDismissible,
    transitionBuilder: _transitionBuilderDialog,
    transitionDuration: durationShowDialogAnimation,
    pageBuilder: (context, animation1, animation2) {
      return DialogContainerWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: icon,
            ),
            const Divider(height: 30, thickness: 1),
            if (content != null)
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 16),
                child: Center(
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          height: 1.43,
                        ),
                  ),
                ),
              ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text(
                      'Cancel',
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text(
                      'Yes',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
