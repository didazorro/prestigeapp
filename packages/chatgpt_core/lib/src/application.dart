import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';
import 'core/components/widgets/dismiss_focus_overlay.dart';
import 'presentations/routes.dart';

class Application extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  final String initialRoute;
  final String title;
  final List<BlocProvider> providers;
  final GlobalKey<NavigatorState> navigationKey;
  final bool isProduction;

  const Application({
    super.key,
    this.savedThemeMode,
    required this.initialRoute,
    required this.title,
    required this.providers,
    required this.navigationKey,
    this.isProduction = true,
  });

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  Widget _buildMaterialApp({
    required Locale locale,
    ThemeData? light,
    ThemeData? dark,
  }) {
    return DismissFocusOverlay(
      child: MaterialApp(
        navigatorKey: widget.navigationKey,
        title: widget.title,
        theme: light,
        darkTheme: dark,
        locale: locale,
        onGenerateRoute: OpenAIRoutes.generateRoute,
        initialRoute: widget.initialRoute,
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      // light: theme.getTheme(Brightness.light),
      // dark: theme.getTheme(Brightness.dark),
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: AdaptiveThemeMode.light,
      builder: (ThemeData light, ThemeData dark) => MultiBlocProvider(
        providers: widget.providers,
        child: _buildMaterialApp(
          locale: const Locale(
            'en',
            '',
          ),
          light: light,
          dark: dark,
        ),
      ),
    );
  }
}
