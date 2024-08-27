part of 'prompt_bloc.dart';

@freezed
class PromptState with _$PromptState {
  const PromptState._();

  const factory PromptState.initial({
    required PromptModelState data,
  }) = _Initial;

  const factory PromptState.loadInProgress({
    required PromptModelState data,
  }) = _LoadInProgess;

  const factory PromptState.loadSuccess({
    required PromptModelState data,
  }) = _LoadSuccess;

  const factory PromptState.loadFailure({
    required PromptModelState data,
  }) = _LoadFailure;

  bool get loadInProgress => this is _LoadInProgess;

  bool get loadSuccess => this is _LoadSuccess;

  bool get loadFailure => this is _LoadFailure;
}
