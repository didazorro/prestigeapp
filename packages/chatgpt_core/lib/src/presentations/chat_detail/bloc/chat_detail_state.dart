part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const ChatDetailState._();

  const factory ChatDetailState.initial({
    required ChatDetailModelState data,
  }) = _Initial;

  const factory ChatDetailState.loading({
    required ChatDetailModelState data,
  }) = _Loading;

  const factory ChatDetailState.getMessageSuccess({
    required ChatDetailModelState data,
  }) = _GetMessageSuccess;

  const factory ChatDetailState.sendMessageSuccess({
    required ChatDetailModelState data,
  }) = _SendMessageSuccess;

  const factory ChatDetailState.speakText({
    required ChatDetailModelState data,
  }) = _SpeakText;
  const factory ChatDetailState.stopSpeak({
    required ChatDetailModelState data,
  }) = _StopSpeak;

  const factory ChatDetailState.listeningSpeak({
    required ChatDetailModelState data,
    required String textListen,
  }) = _ListeningSpeak;
  const factory ChatDetailState.stopListen({
    required ChatDetailModelState data,
  }) = _StopListen;

  const factory ChatDetailState.error({
    required ChatDetailModelState data,
    required String message,
  }) = _SendMessageError;

  const factory ChatDetailState.loadingMessage({
    required ChatDetailModelState data,
  }) = _LoadingMessage;

  const factory ChatDetailState.removeMessageSuccess({
    required ChatDetailModelState data,
  }) = _RemoveMessageSuccess;

  const factory ChatDetailState.removeMessageFailed({
    required ChatDetailModelState data,
    required String message,
  }) = _RemoveMessageFailed;

  bool get isSpeaking => this is _SpeakText;
  bool get isListening => this is _ListeningSpeak;
  bool get isLoadingMessage => this is _LoadingMessage;
}
