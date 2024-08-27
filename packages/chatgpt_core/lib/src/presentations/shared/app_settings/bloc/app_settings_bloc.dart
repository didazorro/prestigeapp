import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_settings_event.dart';

part 'app_settings_state.dart';

@singleton
class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc()
      : super(AppSettingsInitial(AppSettingModel(
          clipboardData: <String>[],
          isHideWindow: false,
        )));

// FutureOr<void> _onInitAppSettingsEvent(
//   InitAppSettingsEvent event,
//   Emitter<AppSettingsState> emit,
// ) {
//   // emit(AppSettingsInitial(AppSettingModel(
//   //   clipboardData: listData ?? <String>[],
//   //   gptToken: gptToken,
//   //   shortcutMenu: shortcutMenu,
//   //   isHideWindow: isHideWindow,
//   // )));
// }
}
