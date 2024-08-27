import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/components/extensions/build_context_ext.dart';
import 'listening_icon.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    required this.textEditingController,
    required this.onSubmitted,
    required this.isListening,
    required this.onVoiceStart,
    required this.onVoiceStop,
    required this.micAvailable,
  });

  final TextEditingController textEditingController;
  final Function onSubmitted;
  final bool isListening;
  final Function() onVoiceStart;
  final Function() onVoiceStop;
  final bool micAvailable;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    final isRTL = context.isRTL();
    final micIcon =
        !widget.micAvailable ? CupertinoIcons.mic_off : CupertinoIcons.mic_fill;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(28),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              (!kIsWeb)
                  ? IconButton(
                      onPressed: !widget.isListening
                          ? widget.onVoiceStart
                          : widget.onVoiceStop,
                      padding: const EdgeInsets.only(bottom: 8),
                      tooltip: !widget.micAvailable
                          ? S.of(context).speechNotAvailable_openai
                          : S.of(context).tapTheMicToTalk_openai,
                      icon: widget.isListening
                          ? const ListeningIcon()
                          : Icon(
                              micIcon,
                              color: Theme.of(context).hintColor,
                            ),
                    )
                  : const SizedBox(width: 20),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    hintText: widget.isListening
                        ? S.of(context).listening_openai
                        : S.of(context).typeAMessage_openai,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(bottom: 8),
                  ),
                  controller: widget.textEditingController,
                  onSubmitted: (value) {
                    widget.onSubmitted.call();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    padding: EdgeInsets.only(
                      left: isRTL ? 0 : 4,
                      right: isRTL ? 4 : 0,
                    ),
                    icon: const Icon(Icons.send_rounded),
                    color: Colors.white,
                    onPressed: () {
                      if (!widget.isListening) {
                        widget.onSubmitted.call();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
