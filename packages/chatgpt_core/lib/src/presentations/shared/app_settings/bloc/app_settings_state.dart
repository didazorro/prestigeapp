part of 'app_settings_bloc.dart';

@immutable
abstract class AppSettingsState {
  final AppSettingModel model;
  const AppSettingsState(this.model);
}

class AppSettingsInitial extends AppSettingsState {
  const AppSettingsInitial(super.model);
}

class AppSettingModel {
  final List<String> clipboardData;
  final String? gptToken;
  final int maxToken;
  final bool isHideWindow;

  AppSettingModel({
    this.maxToken = 2000,
    required this.clipboardData,
    this.gptToken,
    required this.isHideWindow,
  });

  AppSettingModel copyWith({
    List<String>? clipboardData,
    String? gptToken,
    int? maxToken,
    bool? isHideWindow,
  }) {
    return AppSettingModel(
      clipboardData: clipboardData ?? this.clipboardData,
      gptToken: gptToken ?? this.gptToken,
      maxToken: maxToken ?? this.maxToken,
      isHideWindow: isHideWindow ?? this.isHideWindow,
    );
  }
}
