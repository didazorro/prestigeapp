import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/dependency_injection/di.dart';
import 'chat/index.dart';
import 'chat_detail/index.dart';
import 'dashboard_screen/views/dashboard_screen.dart';
import 'manage_key/index.dart';
import 'prompt/index.dart';

class MainRoutes {
  static Map<String, WidgetBuilder> getAll(RouteSettings settings) => {
        DashboardScreen.routeName: (context) => const DashboardScreen(),
        ManageScreen.routeName: (context) => const ManageScreen(),
        ChatScreen.routeName: (context) {
          String? identifier;
          VoidCallback? loginCallback;
          final args = settings.arguments;
          if (args is Map) {
            identifier = args['identifier'] as String?;
            loginCallback = args['loginCallback'];
          }

          return BlocProvider<ChatBloc>(
            create: (context) => injector(param1: identifier),
            child: ChatScreen(loginCallback: loginCallback),
          );
        },
        ChatDetailScreen.routeName: (context) {
          final chatId = settings.arguments as int;

          return BlocProvider<ChatDetailBloc>(
            create: (context) => injector(param1: chatId),
            child: const ChatDetailScreen(),
          );
        },
        PromptScreen.routeName: (context) => BlocProvider<PromptBloc>(
              create: (context) => injector(),
              child: const PromptScreen(),
            ),
        ManageKeyScreen.routeName: (context) {
          final identifier = settings.arguments as String?;

          return BlocProvider<ManageKeyBloc>(
            create: (context) => injector(param1: identifier),
            child: const ManageKeyScreen(),
          );
        },
      };
}
