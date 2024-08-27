import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/extensions/build_context_ext.dart';
import '../../../../domain/entities/message/message.dart';
import 'avatar.dart';
import 'chat_mixin.dart';
import 'loaded_card.dart';
import 'loading_card.dart';
import 'speaking_icon.dart';

class ChatMessage extends StatelessWidget with ChatMixin {
  const ChatMessage({
    super.key,
    required this.message,
    this.onReSend,
    this.onSpeakTap,
    this.isSpeaking = false,
    this.onRemove,
  });

  final Message message;
  final Function()? onReSend;
  final Function()? onSpeakTap;
  final bool isSpeaking;
  final Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    final isUser = message.type.isUser;
    final isAssistant = message.type.isAssistant;

    var content = <Widget>[
      // Just show assistant icon
      if (isAssistant) Avatar(showBottomMargin: message.status.isSuccess),
      const SizedBox(width: 8),
      Flexible(
        flex: 10,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: (isAssistant && message.status.isLoading)
              ? LoadingCard(message: message)
              : LoadedCard2(
                  message: message,
                  remove: () => remove(context, onRemove),
                  copy: () => context.copyText(message.content),
                  share: () => context.shareText(message.content),
                ),
        ),
      ),
      if (isAssistant && message.status.isSuccess)
        isSpeaking
            ? SpeakingIcon(
                message: message.content,
                onSpeakTap: onSpeakTap,
              )
            : Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: IconButton(
                  onPressed: () {
                    onSpeakTap?.call();
                  },
                  icon: Icon(
                    CupertinoIcons.play_circle,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ),
      if (isUser && message.status.isError) errorIcon(onReSend),
      const Expanded(child: SizedBox()),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: isUser ? content.reversed.toList() : content,
      ),
    );
  }
}
