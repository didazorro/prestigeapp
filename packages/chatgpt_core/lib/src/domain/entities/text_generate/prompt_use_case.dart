import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sub_prompt_use_case.dart';

part 'prompt_use_case.freezed.dart';

part 'prompt_use_case.g.dart';

@freezed
class PromptUseCase with _$PromptUseCase {
  const factory PromptUseCase({
    required String name,
    required List<SubPromptUseCase> listSubPromptUseCase,
  }) = _PromptUseCase;

  const PromptUseCase._();

  factory PromptUseCase.empty() =>
      const PromptUseCase(name: '', listSubPromptUseCase: []);

  factory PromptUseCase.fromJson(Map<String, dynamic> json) =>
      _$PromptUseCaseFromJson(json);

  static const promptLibrary = 'Prompt Library';

  bool get isPromptLibrary => name == promptLibrary;
}
