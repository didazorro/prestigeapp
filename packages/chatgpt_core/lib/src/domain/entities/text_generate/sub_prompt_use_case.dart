import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/components/constants/constant.dart';

part 'sub_prompt_use_case.freezed.dart';

part 'sub_prompt_use_case.g.dart';

@freezed
class SubPromptUseCase with _$SubPromptUseCase {
  const factory SubPromptUseCase({
    required String name,
    required String description,
    required PromptUseCaseType type,
    @Default('') String promptText,
  }) = _SubPromptUseCase;

  factory SubPromptUseCase.fromJson(Map<String, dynamic> json) =>
      _$SubPromptUseCaseFromJson(json);
}
