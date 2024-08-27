import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prompt.freezed.dart';

@freezed
class Prompt with _$Prompt {
  const factory Prompt({
    required int id,
    required String title,
    required String description,
    String? imageUrl,
  }) = _Prompt;
}
