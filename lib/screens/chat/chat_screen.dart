import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';
import '../../services/services.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider.value(
      value: context.read<UserModel>(),
      child: Consumer<UserModel>(
        builder: (context, value, child) {
          final email = value.user?.email;
          if (email == null) {
            return Services().firebase.renderChatAuthScreen();
          }
          return Services().firebase.renderListChatScreen(email: email);
        },
      ),
    );
  }
}
