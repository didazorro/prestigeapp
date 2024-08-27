part of 'prompt_bloc.dart';

@freezed
class PromptEvent with _$PromptEvent {
  const factory PromptEvent.getPrompts() = _GetPrompts;
  const factory PromptEvent.refreshed() = _Refreshed;
  const factory PromptEvent.promptSelected(String promptId) = _PromptSelected;
  const factory PromptEvent.promptUnselected() = _PromptUnselected;
  const factory PromptEvent.searchChanged(String search) = _SearchChanged;
}
