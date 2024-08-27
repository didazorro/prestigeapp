import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_generate_model.freezed.dart';

part 'text_generate_model.g.dart';

@freezed
class TextGenerateModel with _$TextGenerateModel {
  const factory TextGenerateModel({
    required String content,
  }) = _TextGenerateModel;

  factory TextGenerateModel.fromJson(Map<String, dynamic> json) =>
      _$TextGenerateModelFromJson(json);
}
