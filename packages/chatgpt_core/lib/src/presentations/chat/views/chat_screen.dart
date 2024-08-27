import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../core/components/widgets/button_custom.dart';
import '../../../domain/entities/chat/chat.dart';
import '../../app_coordinator.dart';
import '../bloc/chat_bloc.dart';
import 'widgets/thread_item.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    Function? loginCallback,
  }) : _loginCallback = loginCallback;

  static const String routeName = 'chat-gpt';

  final Function? _loginCallback;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatBloc get _bloc => BlocProvider.of<ChatBloc>(context);

  void onCreateNewChat() {
    _bloc.add(const ChatEvent.createNewChat());
  }

  void onSelectedChat(int id) {
    // chatBloc.add(ChatEvent.selectChat(id));
    _bloc.add(ChatEvent.selectChat(id));
  }

  void onDeleteChat(int id) {
    _bloc.add(ChatEvent.deleteChat(id));
  }

  void onEditChat(Chat chat, String title) {
    _bloc.add(ChatEvent.editChat(chat, title));
  }

  void _listenStateChanged(_, ChatState state) {
    state.whenOrNull(
      selectChatSuccess: (data, chatId) {
        context.startChat(chatId);
      },
      expiredSubscription: (data, errorMessage, identifier) async {
        final newIdentifier = await context.showExpiredSubscriptionBottomSheet(
          identifier,
          widget._loginCallback,
        );
        if (newIdentifier != null) {
          _bloc.add(ChatEvent.updateIdentifier(newIdentifier));
        }
      },
      updateIdentifierSuccess: (data, isExpiredSubscription) {
        if (isExpiredSubscription) {
          context.showSubscriptionBottomSheet();
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _bloc.add(const ChatEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: _listenStateChanged,
      builder: (context, state) {
        final chats = state.data.chats;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            title: Text(S.of(context).chat_openai),
          ),
          // Generate a list thread chat
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    final chat = chats[index];

                    return ThreadItem(
                      text: chat.title,
                      isSelect: true,
                      onPressed: () => onSelectedChat(chat.id),
                      delete: () => onDeleteChat(chat.id),
                      changeName: (value) => onEditChat(chat, value),
                    );
                  },
                ),
              ),
              SafeArea(
                top: false,
                minimum: const EdgeInsets.all(16).copyWith(top: 12),
                child: ButtonCustom(
                  height: 50.0,
                  color: Theme.of(context).primaryColor,
                  press: onCreateNewChat,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add, color: Colors.white),
                      Text(
                        S.of(context).newChat_openai,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
