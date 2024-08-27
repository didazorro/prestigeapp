import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../generated/l10n.dart';
import '../../../core/components/constants/chat_detail_actions.dart';
import '../../../core/components/constants/constant.dart';
import '../../../core/components/extensions/build_context_ext.dart';
import '../../../core/components/widgets/custom_image.dart';
import '../../../core/components/widgets/dismiss_focus_overlay.dart';
import '../../../core/components/widgets/will_pop_scope.dart';
import '../../../domain/entities/message/message.dart';
import '../bloc/chat_detail_bloc.dart';
import 'widgets/chat_message.dart';
import 'widgets/input_widget.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  static const routeName = '/chat-detail';

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  ChatDetailBloc get _bloc => BlocProvider.of<ChatDetailBloc>(context);

  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.add(const ChatDetailEvent.getMessages());
    _bloc.add(ChatDetailEvent.initSpeechToText(() {
      _bloc.add(const ChatDetailEvent.listenComplete());
    }));
    _bloc.add(const ChatDetailEvent.initTextToSpeech());
  }

  void _onSendMessage() {
    _bloc.add(ChatDetailEvent.sendMessage(_textEditingController.text));
    _textEditingController.clear();
  }

  void _onRemoveMessage(Message message) {
    _bloc.add(ChatDetailEvent.removeMessage(message.id));
  }

  void _onReSendMessage(Message message) {
    _bloc.add(ChatDetailEvent.reSendMessage(message.id));
  }

  void _onSpeakTap(Message message) {
    _bloc.add(ChatDetailEvent.startSpeech(message.content, message.id));
  }

  void _onVoiceStart() {
    _bloc.add(const ChatDetailEvent.startListenSpeech());
  }

  void _onVoiceStop() {
    _bloc.add(const ChatDetailEvent.stopListenSpeak());
  }

  void _listenStateChanged(_, ChatDetailState state) {
    state.whenOrNull(
      error: (data, error) => _onErrorMessage(error),
      // subscriptionExpired: (_) => context.showExpiredSubscriptionBottomSheet(),
      listeningSpeak: (_, speechText) {
        _textEditingController
          ..text = speechText
          ..selection = TextSelection.collapsed(offset: speechText.length);
      },
    );
  }

  void _onShareTap(List<Message> messages) {
    var prompts = messages.reversed.fold<String>(
      '',
      (previousValue, element) =>
          '$previousValue${element.type.roleName}: ${element.content}\n${element.type.isAssistant ? '\n' : ''}',
    );

    context.shareText(prompts);
  }

  void _onClearConversation() {
    context.showConfirmDialog().then((confirm) {
      if (confirm == true) {
        _bloc.add(const ChatDetailEvent.clearAllMessages());
      }
    });
  }

  void _onRegenerateTap() {
    _bloc.add(const ChatDetailEvent.reGenerateMessage());
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (mounted) {
      var visiblePercentage = info.visibleFraction;
      if (visiblePercentage == 0) {
        _bloc.add(const ChatDetailEvent.removeSpeech());
        _bloc.add(const ChatDetailEvent.stopListenSpeak());
      }
    }
  }

  void _closeErrorMessage() =>
      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

  void _onErrorMessage(String message) {
    _closeErrorMessage();
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              _closeErrorMessage();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    _bloc.add(const ChatDetailEvent.stopListenSpeak());
    _bloc.add(const ChatDetailEvent.removeSpeech());
    super.deactivate();
  }

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return DismissFocusOverlay(
      child: VisibilityDetector(
        key: const Key('Chat detail screen'),
        onVisibilityChanged: _onVisibilityChanged,
        child: BlocConsumer<ChatDetailBloc, ChatDetailState>(
          listener: _listenStateChanged,
          builder: (context, state) {
            final messages = state.data.messages;
            final messageSpeech = state.data.messaageSpeech;

            return WillPopScopeWidget(
              onWillPop: () async {
                _bloc.add(const ChatDetailEvent.removeSpeech());
                _bloc.add(const ChatDetailEvent.stopListenSpeak());
                _closeErrorMessage();

                return true;
              },
              child: Stack(
                children: [
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  if (Constant.chatBackgroundImage.isNotEmpty)
                    Positioned.fill(
                      child: CustomImage(
                        imageUrl: Constant.chatBackgroundImage,
                        fit: BoxFit.cover,
                        color: primaryColor.withOpacity(0.1),
                      ),
                    ),
                  Positioned.fill(
                    child: Container(
                      color: primaryColor.withOpacity(0.1),
                    ),
                  ),
                  Scaffold(
                    appBar: AppBar(
                      title: Text(S.of(context).chatDetail_openai),
                      backgroundColor: primaryColor,
                      actions: [
                        PopupMenuButton<ChatDetailActions>(
                          icon: const Icon(Icons.more_vert_rounded),
                          onSelected: (ChatDetailActions item) {
                            switch (item) {
                              case ChatDetailActions.clear:
                                _onClearConversation();
                                break;
                              case ChatDetailActions.share:
                                _onShareTap(state.data.messages);
                                break;
                              case ChatDetailActions.regenerate:
                              default:
                                _onRegenerateTap();
                            }
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<ChatDetailActions>>[
                            PopupMenuItem<ChatDetailActions>(
                              value: ChatDetailActions.regenerate,
                              child:
                                  Text(S.of(context).regenerateResponse_openai),
                            ),
                            PopupMenuItem<ChatDetailActions>(
                              value: ChatDetailActions.share,
                              child: Text(S.of(context).share_openai),
                            ),
                            PopupMenuItem<ChatDetailActions>(
                              value: ChatDetailActions.clear,
                              child:
                                  Text(S.of(context).clearConversation_openai),
                            ),
                          ],
                        ),
                      ],
                    ),
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            reverse: true,
                            itemCount: messages.length,
                            itemBuilder: (context, index) {
                              var message = messages[index];

                              return ChatMessage(
                                message: message,
                                isSpeaking: messageSpeech == message.id,
                                onSpeakTap: () => _onSpeakTap(message),
                                onRemove: () => _onRemoveMessage(message),
                                onReSend: () => _onReSendMessage(message),
                              );
                            },
                          ),
                        ),
                        InputWidget(
                          textEditingController: _textEditingController,
                          isListening: state.maybeWhen(
                            listeningSpeak: (_, __) => true,
                            orElse: () => false,
                          ),
                          onVoiceStart: _onVoiceStart,
                          onVoiceStop: _onVoiceStop,
                          micAvailable: state.data.micAvailable,
                          onSubmitted: _onSendMessage,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
