part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial({
    required ChatModelState data,
  }) = _Initial;

  const factory ChatState.loading({
    required ChatModelState data,
  }) = _Loading;

  const factory ChatState.loadChatSuccess({
    required ChatModelState data,
  }) = _LoadChatSuccess;

  const factory ChatState.deleteChatSuccess({
    required ChatModelState data,
  }) = _DeleteChatSuccess;

  const factory ChatState.deleteChatFailed({
    required ChatModelState data,
    required String message,
  }) = _DeleteChatFailed;

  const factory ChatState.createChatSuccess({
    required ChatModelState data,
  }) = _CreateChatSuccess;

  const factory ChatState.createChatFailed({
    required ChatModelState data,
    required String message,
  }) = _CreateChatFailed;

  const factory ChatState.expiredSubscription({
    required ChatModelState data,
    required String message,
    required String? identifier,
  }) = _ExpiredSubscription;

  const factory ChatState.updateIdentifierSuccess({
    required ChatModelState data,
    required bool isExpiredSubscription,
  }) = _UpdateIdentifierSuccess;

  const factory ChatState.selectChatSuccess({
    required ChatModelState data,
    required int chatId,
  }) = _SelectChatSuccess;

  const factory ChatState.selectChatFailed({
    required ChatModelState data,
    required String message,
  }) = _SelectChatFailed;

  const factory ChatState.editChatSuccess({
    required ChatModelState data,
  }) = _EditChatSuccess;

  const factory ChatState.editChatFailed({required ChatModelState data}) =
      _EditChatFailed;
}
