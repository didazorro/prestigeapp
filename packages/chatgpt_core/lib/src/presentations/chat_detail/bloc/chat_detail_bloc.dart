import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../generated/l10n.dart';
import '../../../core/services/speech_text_service.dart';
import '../../../core/services/text_speech_service.dart';
import '../../../domain/entities/message/message.dart';
import '../../../domain/entities/message/message_status.dart';
import '../../../domain/entities/message/message_type.dart';
import '../../../domain/usecase/chat_usecase.dart';
import 'chat_detail_model_state.dart';

part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_event.dart';
part 'chat_detail_state.dart';

const _messageIdNull = -1;
const _contentNull = '';

@injectable
class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final int _chatId;
  final ChatUsecase _chatUsecase;
  final TextSpeechService _textSpeechUsecase;
  final SpeechTextService _speechTextService;

  ChatDetailBloc(
    @factoryParam int chatId,
    this._chatUsecase,
    this._textSpeechUsecase,
    this._speechTextService,
  )   : _chatId = chatId,
        super(const ChatDetailState.initial(
          data: ChatDetailModelState(
            messages: [],
            messaageSpeech: _messageIdNull,
            micAvailable: false,
          ),
        )) {
    on<_GetMessages>(_onGetMessages);
    on<_SendMessage>(_onSendMessage);
    on<_ReGenerateMessage>(_onReGenerateMessage);
    on<_ReSendMessage>(_onReSendMessage);
    on<_RemoveMessage>(_onRemoveMessage);
    on<_InitSpeechToText>(_initSpeechToText);
    on<_InitTextToSpeech>(_initTextToSpeech);
    on<_StartSpeech>(_onStartSpeech);
    on<_CancelSpeech>(_onCancelSpeech);
    on<_RemoveSpeech>(_onRemoveSpeech);
    on<_ClearAllMessages>(_onClearAllMessages);
    on<_StartListenSpeech>(_onStartListenSpeech);
    on<_StopListenSpeak>(_onStopListenSpeak);
    on<_ListenComplete>(_onListenComplete);
    on<_TextListenChange>(_onTextListenChange);
    on<_UpdateMicAvailableData>(_onUpdateMicAvailableData);
  }

//Speech to text handle

  FutureOr<void> _onUpdateMicAvailableData(
    _UpdateMicAvailableData event,
    Emitter<ChatDetailState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(micAvailable: event.checkMic),
    ));
  }

  FutureOr<void> _initSpeechToText(
    _InitSpeechToText event,
    Emitter<ChatDetailState> emit,
  ) async {
    var initSpeechToText = await _speechTextService.initSpeechToText((status) {
      if (status == 'listening') {
        debugPrint('Status : Listening');
      } else {
        debugPrint('Status : Stop Listening');
        add(const _ListenComplete());
      }
    });
    if (initSpeechToText) {
      add(const _UpdateMicAvailableData(true));
    }
  }

  FutureOr<void> _onTextListenChange(
    _TextListenChange event,
    Emitter<ChatDetailState> emit,
  ) {
    emit(ChatDetailState.listeningSpeak(
      data: state.data,
      textListen: event.text,
    ));
  }

  FutureOr<void> _onListenComplete(
    _ListenComplete event,
    Emitter<ChatDetailState> emit,
  ) {
    emit(ChatDetailState.stopListen(data: state.data));
  }

  FutureOr<void> _onStartListenSpeech(
    _StartListenSpeech event,
    Emitter<ChatDetailState> emit,
  ) async {
    try {
      if (!state.data.micAvailable) {
        return;
      }

      emit(ChatDetailState.stopSpeak(
        data: state.data.copyWith(messaageSpeech: _messageIdNull),
      ));
      await _textSpeechUsecase.cancelHandler();

      emit(ChatDetailState.listeningSpeak(
        data: state.data,
        textListen: '',
      ));

      _speechTextService.startSpeak(
        (speechText) {
          add(_TextListenChange(speechText));
        },
      );
    } catch (error) {
      emit(ChatDetailState.stopListen(data: state.data));
    }
  }

  FutureOr<void> _onStopListenSpeak(
    _StopListenSpeak event,
    Emitter<ChatDetailState> emit,
  ) async {
    emit(ChatDetailState.stopListen(data: state.data));
    await _speechTextService.stopSpeak();
  }

  // Text to speech handle

  FutureOr<void> _initTextToSpeech(
    _InitTextToSpeech event,
    Emitter<ChatDetailState> emit,
  ) async {
    await _textSpeechUsecase.initTextToSpeech();
    _textSpeechUsecase.setCompletionHandler(() {
      debugPrint('::::::Text to speech complete');
      add(const _CancelSpeech());
    });
  }

  FutureOr<void> _onStartSpeech(
    _StartSpeech event,
    Emitter<ChatDetailState> emit,
  ) async {
    try {
      if (state.isListening) {
        // emit(ChatDetailState.stopListen(
        //   data: state.data.copyWith(speechTextString: _speechTextNull),
        // ));
        await _speechTextService.stopSpeak();
      }

      await _textSpeechUsecase.cancelHandler();

      if (event.messageId == state.data.messaageSpeech) {
        emit(ChatDetailState.stopSpeak(
          data: state.data.copyWith(messaageSpeech: _messageIdNull),
        ));
        return;
      }

      emit(ChatDetailState.stopSpeak(
        data: state.data.copyWith(messaageSpeech: _messageIdNull),
      ));

      await Future.delayed(const Duration(milliseconds: 250));
      emit(ChatDetailState.speakText(
        data: state.data.copyWith(messaageSpeech: event.messageId),
      ));
      await _textSpeechUsecase.startHandler(text: event.message);
      // emit(ChatDetailState.stopSpeak(
      //   data: state.data.copyWith(messaageSpeech: _messageIdNull),
      // ));
    } catch (err) {
      rethrow;
    }
  }

  FutureOr<void> _onCancelSpeech(
    _CancelSpeech event,
    Emitter<ChatDetailState> emit,
  ) {
    emit(ChatDetailState.stopSpeak(
      data: state.data.copyWith(messaageSpeech: _messageIdNull),
    ));
  }

  FutureOr<void> _onRemoveSpeech(
    _RemoveSpeech event,
    Emitter<ChatDetailState> emit,
  ) async {
    emit(ChatDetailState.stopSpeak(
      data: state.data.copyWith(messaageSpeech: _messageIdNull),
    ));
    await _textSpeechUsecase.cancelHandler();
  }

  FutureOr<void> _onGetMessages(
    _GetMessages event,
    Emitter<ChatDetailState> emit,
  ) async {
    emit(ChatDetailState.loading(data: state.data));

    final messages = await _chatUsecase.getMessages(chatId: _chatId);

    emit(ChatDetailState.getMessageSuccess(
      data: state.data.copyWith(messages: messages?.reversed.toList() ?? []),
    ));
  }

  FutureOr<void> _onSendMessage(
    _SendMessage event,
    Emitter<ChatDetailState> emit,
  ) async {
    if (state.isLoadingMessage) {
      return;
    }
    emit(ChatDetailState.loading(data: state.data));

    final oldMessages = [...state.data.messages];

    final trimmedMessage = event.message.trim();

    if (trimmedMessage.isEmpty) return;

    final message = Message(
      id: 0,
      chatId: _chatId,
      content: trimmedMessage,
      createdAt: DateTime.now(),
      status: MessageStatus.loading,
      type: MessageType.user,
    );

    try {
      final loadingMessage = Message(
        id: 0,
        chatId: _chatId,
        content: _contentNull,
        createdAt: DateTime.now(),
        status: MessageStatus.loading,
        type: MessageType.assistant,
      );

      final messages = [loadingMessage, message, ...oldMessages];

      emit(ChatDetailState.loadingMessage(
        data: state.data.copyWith(messages: messages),
      ));
      final result = await _chatUsecase.sendMessage(
        chatId: _chatId,
        message: message,
      );
      messages.removeAt(0);
      if (result == null) {
        emit(ChatDetailState.error(
          data: state.data.copyWith(messages: [
            message.copyWith(status: MessageStatus.error),
            ...oldMessages,
          ]),
          message: S.current.failedToSendMessage_openai,
        ));

        return;
      }

      emit(ChatDetailState.sendMessageSuccess(
        data: state.data.copyWith(messages: [result, ...state.data.messages]),
      ));
    } catch (e) {
      emit(ChatDetailState.error(
        data: state.data.copyWith(messages: [
          message.copyWith(status: MessageStatus.error),
          ...oldMessages,
        ]),
        message: S.current.failedToSendMessage_openai,
      ));
    }
  }

  FutureOr<void> _onReGenerateMessage(
    _ReGenerateMessage event,
    Emitter<ChatDetailState> emit,
  ) async {
    if (state.isLoadingMessage) {
      return;
    }
    emit(ChatDetailState.loading(data: state.data));

    final oldMessages = state.data.messages;
    try {
      final loadingMessage = Message(
        id: 0,
        chatId: _chatId,
        content: _contentNull,
        createdAt: DateTime.now(),
        status: MessageStatus.loading,
        type: MessageType.assistant,
      );
      final messages = [loadingMessage, ...oldMessages];

      emit(ChatDetailState.loadingMessage(
        data: state.data.copyWith(messages: messages),
      ));
      final result = await _chatUsecase.reGenerateMessage(
        chatId: _chatId,
        allMessages: oldMessages,
      );
      messages.removeAt(0);
      if (result == null) {
        emit(ChatDetailState.error(
          data: state.data.copyWith(messages: [
            ...oldMessages,
          ]),
          message: S.current.failedToSendMessage_openai,
        ));

        return;
      }

      emit(ChatDetailState.sendMessageSuccess(
        data: state.data.copyWith(messages: [result, ...oldMessages]),
      ));
    } catch (e) {
      emit(ChatDetailState.error(
        data: state.data.copyWith(messages: oldMessages),
        message: S.current.failedToSendMessage_openai,
      ));
    }
  }

  FutureOr<void> _onRemoveMessage(
    _RemoveMessage event,
    Emitter<ChatDetailState> emit,
  ) async {
    emit(ChatDetailState.loading(data: state.data));

    final success = await _chatUsecase.deleteMessage(
      chatId: _chatId,
      messageId: event.messageId,
    );

    if (success) {
      var listMessages = [...state.data.messages];
      listMessages.removeWhere((element) => element.id == event.messageId);

      emit(ChatDetailState.removeMessageSuccess(
        data: state.data.copyWith(
          messages: listMessages,
        ),
      ));
    } else {
      emit(ChatDetailState.removeMessageFailed(
        data: state.data,
        message: S.current.failedToSendMessage_openai,
      ));
    }
  }

  FutureOr<void> _onReSendMessage(
    _ReSendMessage event,
    Emitter<ChatDetailState> emit,
  ) async {
    if (state.isLoadingMessage) {
      return;
    }
    emit(ChatDetailState.loading(data: state.data));

    final oldMessages = [...state.data.messages];

    try {
      var listMessages = [...state.data.messages];

      var indexOfMessage =
          listMessages.indexWhere((element) => element.id == event.messageId);
      var message =
          listMessages[indexOfMessage].copyWith(status: MessageStatus.success);
      listMessages[indexOfMessage] = message;

      final loadingMessage = Message(
        id: 0,
        chatId: _chatId,
        content: _contentNull,
        createdAt: DateTime.now(),
        status: MessageStatus.loading,
        type: MessageType.assistant,
      );
      final messages = [loadingMessage, ...listMessages];

      emit(ChatDetailState.loadingMessage(
        data: state.data.copyWith(messages: messages),
      ));
      final result = await _chatUsecase.reSendMessage(
        chatId: _chatId,
        message: message,
      );
      messages.removeAt(0);
      if (result == null) {
        emit(ChatDetailState.error(
          data: state.data.copyWith(messages: [
            ...oldMessages,
          ]),
          message: S.current.failedToSendMessage_openai,
        ));

        return;
      }

      emit(ChatDetailState.sendMessageSuccess(
        data: state.data.copyWith(messages: [result, ...listMessages]),
      ));
    } catch (e) {
      emit(ChatDetailState.error(
        data: state.data.copyWith(messages: oldMessages),
        message: S.current.failedToSendMessage_openai,
      ));
    }
  }

  FutureOr<void> _onClearAllMessages(
    _ClearAllMessages event,
    Emitter<ChatDetailState> emit,
  ) async {
    emit(ChatDetailState.loading(data: state.data));

    final success = await _chatUsecase.clearAllMessagesFromChatId(_chatId);

    if (!success) {
      emit(ChatDetailState.error(
        data: state.data,
        message: 'Failed to clear all chat',
      ));

      return;
    }

    emit(ChatDetailState.initial(data: state.data.copyWith(messages: [])));
  }

  @override
  Future<void> close() {
    _textSpeechUsecase.setCompletionHandler(() => null);
    return super.close();
  }
}
