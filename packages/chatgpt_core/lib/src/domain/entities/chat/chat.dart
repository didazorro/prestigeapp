import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required int id,
    required String title,
    String? description,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Chat;
}
