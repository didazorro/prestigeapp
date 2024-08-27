import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/chat/chat.dart';

part 'chat_model_state.freezed.dart';

@freezed
class ChatModelState with _$ChatModelState {
  const factory ChatModelState({
    String? identifier,
    required List<Chat> chats,
  }) = _ChatModelState;
}
