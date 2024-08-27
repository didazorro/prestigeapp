import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

import '../../../../core/components/extensions/build_context_ext.dart';
import '../../../../core/components/tools/tools.dart';
import '../../../../core/components/widgets/selection_control.dart';
import '../../../../domain/entities/message/message.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.message,
    this.canSelectable = false,
  });

  final Message message;
  final bool canSelectable;

  @override
  Widget build(BuildContext context) {
    final isRTL = context.isRTL();
    final isUser = message.type.isUser;
    final textTheme = Theme.of(context).textTheme;
    var backgroundColor = isUser
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).scaffoldBackgroundColor;
    if (message.status.isError) {
      backgroundColor = Theme.of(context).colorScheme.error;
    }

    var selectedColor = Theme.of(context).hintColor;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
          bottomLeft: Radius.circular((isUser ^ isRTL) ? 15 : 0),
          bottomRight: Radius.circular((isUser ^ isRTL) ? 0 : 15),
        ),
      ),
      child: SingleChildScrollView(
        child: canSelectable
            ? Theme(
                data: Theme.of(context).copyWith(
                  textSelectionTheme: Theme.of(context)
                      .textSelectionTheme
                      .copyWith(selectionColor: selectedColor),
                ),
                child: SelectableLinkify(
                  textScaleFactor: 1.25,
                  onOpen: (link) => Tools.launchURL(link.url),
                  text: message.content,
                  style: textTheme.titleMedium?.copyWith(
                    color: Tools.textColorForBackground(backgroundColor),
                  ),
                  selectionControls: CustomColorSelectionHandle(selectedColor),
                  linkStyle: textTheme.titleMedium?.copyWith(
                    color: Tools.textColorForBackground(backgroundColor),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor:
                        Tools.textColorForBackground(backgroundColor),
                  ),
                  options: const LinkifyOptions(humanize: false),
                ),
              )
            : Linkify(
                onOpen: (link) => Tools.launchURL(link.url),
                text: message.content,
                style: textTheme.titleMedium?.copyWith(
                  color: Tools.textColorForBackground(backgroundColor),
                ),
                linkStyle: textTheme.titleMedium?.copyWith(
                  color: Tools.textColorForBackground(backgroundColor),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor:
                      Tools.textColorForBackground(backgroundColor),
                ),
                options: const LinkifyOptions(humanize: false),
              ),
      ),
    );
  }
}
