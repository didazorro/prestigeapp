import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/message/message.dart';

part 'chat_detail_model_state.freezed.dart';

@freezed
class ChatDetailModelState with _$ChatDetailModelState {
  const factory ChatDetailModelState({
    required List<Message> messages,
    required int messaageSpeech,
    required bool micAvailable,
  }) = _ChatDetailModelState;
}
