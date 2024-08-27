import 'package:flutter/material.dart';

import '../../../../core/components/constants/constant.dart';
import '../../../../core/components/widgets/custom_image.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.showBottomMargin,
  });

  final bool showBottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 32, maxWidth: 32),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        color: Theme.of(context).colorScheme.primary,
        border: const Border.fromBorderSide(BorderSide(color: Colors.white)),
      ),
      padding: const EdgeInsets.all(4),
      margin: showBottomMargin ? const EdgeInsets.only(bottom: 16) : null,
      child: CustomImage(
        imageUrl: Theme.of(context).brightness == Brightness.dark
            ? Constant.lightIcon
            : Constant.darkIcon,
        color: Colors.white,
      ),
    );
  }
}
