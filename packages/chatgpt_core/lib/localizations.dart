import 'package:flutter/material.dart';
import 'package:multiple_localization/multiple_localization.dart';
import 'generated/intl/messages_all.dart';
import 'generated/l10n.dart';

class SOpenAI extends S {
  static const SDelegate delegate = SDelegate();
}

class SDelegate extends AppLocalizationDelegate {
  const SDelegate();

  @override
  Future<S> load(Locale locale) {
    return MultipleLocalizations.load(
      initializeMessages,
      locale,
      (l) => S.load(Locale(l)),
      setDefaultLocale: true,
    );
  }
}
