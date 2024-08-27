part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.createNewChat() = _CreateNewChat;

  const factory ChatEvent.deleteChat(int chatId) = _DeleteChat;

  const factory ChatEvent.updateIdentifier(String identifier) =
      _UpdateIdentifier;

  const factory ChatEvent.selectChat(int chatId) = _SelectChat;

  const factory ChatEvent.editChat(Chat chat, String title) = _EditChat;
}
