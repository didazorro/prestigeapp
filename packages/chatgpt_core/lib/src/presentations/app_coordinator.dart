import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/components/constants/name_key.dart';
import '../core/dependency_injection/di.dart';
import '../domain/entities/prompt/prompt.dart';
import 'chat_detail/index.dart';
import 'dashboard_screen/bloc/dashboard_bloc.dart';
import 'dashboard_screen/views/dashboard_screen.dart';
import 'manage_key/index.dart';
import 'prompt/index.dart';
import 'shared/subscriptions/bloc/subscription_bloc.dart';
import 'shared/subscriptions/views/bottom_sheet_introduction.dart';
import 'shared/subscriptions/views/paywall.dart';

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void startSelectedBottomBarItem(int index) {
    read<DashboardBloc>().add(BottomBarItemSelectedEvent(index));
  }

  Future<T?> startDashboard() {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(DashboardScreen.routeName, (route) => false);
  }

  Future<T?> startImageGenerate() {
    return Future.value();
  }

  Future<T?> startTextGenerate() {
    return Future.value();
  }

  Future<T?> showExpiredSubscriptionBottomSheet(
    String? userId,
    Function? loginCallBack,
  ) {
    return showModalBottomSheet(
      context: this,
      backgroundColor: Colors.transparent,
      builder: (context) => BottomSheetIntroduction(
        isLoggedIn: userId != null,
        enableInputKey: injector(instanceName: NameKey.enableInputKey),
        enableSubscription: injector(instanceName: NameKey.enableSubscription),
        onTapSubscription: () async {
          if (userId != null) {
            pop();
            await showSubscriptionBottomSheet();
          } else {
            final newUserId = await loginCallBack?.call();
            Navigator.of(context).pop(newUserId);
          }
        },
        onTapInputApiKey: () {
          pop();
          showInputOpenAiKey();
        },
      ),
    );
  }

  Future<T?> showSubscriptionBottomSheet() {
    return showModalBottomSheet(
      useRootNavigator: true,
      isDismissible: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      context: this,
      builder: (BuildContext context) {
        return BlocProvider<SubscriptionBloc>(
          create: (context) => injector(),
          child: const Paywall(),
        );
      },
    );
  }

  Future<T?> startChat(int threadId) {
    return Navigator.of(this)
        .pushNamed(ChatDetailScreen.routeName, arguments: threadId);
  }

  Future<Prompt?> showSelectPrompt() {
    return Navigator.of(this)
        .pushNamed(PromptScreen.routeName)
        .then((value) => value as Prompt?);
  }

  Future<T?> showInputOpenAiKey([String? identifier]) {
    return Navigator.of(this).pushNamed(
      ManageKeyScreen.routeName,
      arguments: identifier,
    );
  }

  Future<T?> startManage() {
    return Navigator.of(this).pushNamed(ManageScreen.routeName);
  }
}
