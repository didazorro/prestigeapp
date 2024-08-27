// ignore_for_file: prefer_final_locals

import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'application.dart';
import 'core/components/blocs/app_bloc_observer.dart';
import 'core/components/configurations/configurations.dart';
import 'core/dependency_injection/di.dart';
import 'core/services/logger_service.dart';
import 'presentations/dashboard_screen/bloc/dashboard_bloc.dart';
import 'presentations/shared/app_settings/bloc/app_settings_bloc.dart';

class AppDelegate {
  Future<Widget> build(Map<String, dynamic> env) async {
    WidgetsFlutterBinding.ensureInitialized();

    Configurations().setConfigurationValues(env);

    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    await configureDependencies(environment: Environment.prod);

    if (Configurations.isStudio) {
      final myBlocObserver = AppBlocObserver();
      Bloc.observer = myBlocObserver;
    }

    return Application(
      title: 'Just OpenAI',
      navigationKey: GlobalKey<NavigatorState>(),
      providers: [
        BlocProvider<AppSettingsBloc>(create: (_) => injector.get()),
        BlocProvider<DashboardBloc>(create: (_) => injector.get()),
      ],
      savedThemeMode: savedThemeMode,
      initialRoute: 'dashboard',
    );
  }

  void run(Map<String, dynamic> env) {
    runZonedGuarded(
      () async {
        final app = await build(env);
        runApp(app);
      },
      (e, trace) {
        if (kDebugMode) {
          LoggerService.print(
            '[AppDelegate]: ${e.toString()}  ${trace.toString()}',
          );
        }
      },
    );
  }
}
