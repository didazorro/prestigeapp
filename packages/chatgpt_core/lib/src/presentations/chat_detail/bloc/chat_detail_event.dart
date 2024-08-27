part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.started() = _Started;

  const factory ChatDetailEvent.getMessages() = _GetMessages;

  const factory ChatDetailEvent.sendMessage(String message) = _SendMessage;

  const factory ChatDetailEvent.reGenerateMessage() = _ReGenerateMessage;

  const factory ChatDetailEvent.removeMessage(int messageId) = _RemoveMessage;

  const factory ChatDetailEvent.reSendMessage(int messageId) = _ReSendMessage;

  const factory ChatDetailEvent.initSpeechToText(Function() listenComplete) =
      _InitSpeechToText;

  const factory ChatDetailEvent.startSpeech(String message, int messageId) =
      _StartSpeech;

  const factory ChatDetailEvent.cancelSpeech() = _CancelSpeech;

  const factory ChatDetailEvent.clearAllMessages() = _ClearAllMessages;

  const factory ChatDetailEvent.removeSpeech() = _RemoveSpeech;

  const factory ChatDetailEvent.initTextToSpeech() = _InitTextToSpeech;

  const factory ChatDetailEvent.startListenSpeech() = _StartListenSpeech;

  const factory ChatDetailEvent.stopListenSpeak() = _StopListenSpeak;

  const factory ChatDetailEvent.listenComplete() = _ListenComplete;

  const factory ChatDetailEvent.textListenChange(String text) =
      _TextListenChange;

  const factory ChatDetailEvent.updateMicAvailableData(bool checkMic) =
      _UpdateMicAvailableData;
}
