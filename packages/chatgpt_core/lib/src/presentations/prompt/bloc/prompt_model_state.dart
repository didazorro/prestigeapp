import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/prompt/prompt.dart';

part 'prompt_model_state.freezed.dart';

@freezed
class PromptModelState with _$PromptModelState {
  const factory PromptModelState({
    required List<Prompt> prompts,
    required List<Prompt> filteredPrompts,
  }) = _PromptModelState;
}
