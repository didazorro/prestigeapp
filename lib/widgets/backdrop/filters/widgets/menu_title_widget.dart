import 'package:flutter/material.dart';
import 'package:inspireui/widgets/expandable/expansion_widget.dart';

class MenuTitleWidget extends StatelessWidget {
  const MenuTitleWidget({
    super.key,
    required this.title,
    this.useExpansionStyle = true,
    required this.child,
  });

  final String title;
  final bool useExpansionStyle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final titleWidget = Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
    );

    if (useExpansionStyle) {
      return ExpansionWidget(
        showDivider: true,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
          bottom: 10,
        ),
        title: titleWidget,
        children: [child],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        titleWidget,
        const SizedBox(height: 10),
        child,
      ],
    );
  }
}
