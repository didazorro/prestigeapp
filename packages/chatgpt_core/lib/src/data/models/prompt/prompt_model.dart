import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/prompt/prompt.dart';

part 'prompt_model.freezed.dart';

part 'prompt_model.g.dart';

@freezed
class PromptModel with _$PromptModel {
  const PromptModel._();

  const factory PromptModel({
    required int id,
    required String title,
    @JsonKey(name: 'content') required String description,
    String? imageUrl,
  }) = _PromptModel;

  factory PromptModel.fromJson(Map<String, dynamic> json) =>
      _$PromptModelFromJson(json);

  Prompt toEntity() => Prompt(
        id: id,
        title: title,
        description: description,
        imageUrl: imageUrl,
      );
}
