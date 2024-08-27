import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_status.dart';
import 'message_type.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required int chatId,
    required String content,
    required DateTime createdAt,
    DateTime? updatedAt,
    required MessageStatus status,
    required MessageType type,
  }) = _Message;

  const Message._();
}
