import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  /// onCreate - onChange - onError - onClose
  final List<bool> enable;

  AppBlocObserver({
    this.enable = const [
      false,
      false,
      true,
      false,
    ],
  });

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    final message = '[AppBlocObserver] onCreate -- $bloc';
    log(message);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    final message = '[AppBlocObserver] onChange -- '
        '${bloc.runtimeType} '
        '${change.currentState.runtimeType} -> ${change.nextState.runtimeType}';
    log(message);

    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final message = '[AppBlocObserver] onError -- $bloc ${error.toString()}'
        '=> stackTrace: ${stackTrace.toString()}';
    log(message);

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    final message = '[AppBlocObserver] onClose -- $bloc';
    log(message);
  }
}
