import 'package:injectable/injectable.dart';

import '../entities/chat/chat.dart';
import '../entities/message/message.dart';
import '../entities/message/message_status.dart';
import '../entities/message/message_type.dart';
import '../repositories/chat_repository.dart';

@injectable
class ChatUsecase {
  final ChatRepository _chatRepository;

  ChatUsecase(this._chatRepository);

  Future<List<Chat>> getChats() {
    return _chatRepository.getChats();
  }

  Future<Chat> createChat() {
    return _chatRepository.createChat();
  }

  Future<bool> updateChat(Chat chat) {
    return _chatRepository.updateChat(chat);
  }

  Future<bool> deleteChat(int chatId) {
    return _chatRepository.deleteChat(chatId);
  }

  Future<List<Message>?> getMessages({
    required int chatId,
  }) async {
    return await _chatRepository.getMessages(chatId);
  }

  Future<bool> deleteMessage({
    required int chatId,
    required int messageId,
  }) async {
    return await _chatRepository.deleteMessage(
      chatId: chatId,
      messageId: messageId,
    );
  }

  Future<bool> updateMessage({
    required int chatId,
    required Message message,
  }) {
    return _chatRepository.updateMessage(chatId: chatId, message: message);
  }

  Future<Message?> sendMessage({
    required int chatId,
    required Message message,
  }) async {
    final allMessages = await _chatRepository.getMessages(chatId);

    final result = await _chatRepository.sendMessages(
      chatId: chatId,
      messages: [...allMessages ?? [], message],
    );

    if (result == null) {
      await _chatRepository.saveMessage(
        chatId: chatId,
        message: message.copyWith(status: MessageStatus.error),
      );

      return null;
    }

    await _chatRepository.saveMessage(
      chatId: chatId,
      message: message.copyWith(status: MessageStatus.success),
    );

    final successMessage = Message(
      id: 0,
      type: MessageType.assistant,
      status: MessageStatus.success,
      chatId: chatId,
      content: result,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final messageId = await _chatRepository.saveMessage(
      chatId: chatId,
      message: successMessage,
    );

    if (messageId == null) {
      return null;
    }

    return successMessage.copyWith(id: messageId);
  }

  Future<Message?> reGenerateMessage({
    required int chatId,
    required List<Message> allMessages,
  }) async {
    var lastUserMessageIndex =
        allMessages.indexWhere((element) => element.type.isUser);

    var listMessages = allMessages.take(lastUserMessageIndex + 1).toList();

    final result = await _chatRepository.sendMessages(
      chatId: chatId,
      messages: listMessages,
    );

    if (result == null) {
      await _chatRepository.updateMessage(
        chatId: chatId,
        message: allMessages[lastUserMessageIndex]
            .copyWith(status: MessageStatus.error),
      );

      return null;
    }

    await _chatRepository.updateMessage(
      chatId: chatId,
      message: allMessages[lastUserMessageIndex]
          .copyWith(status: MessageStatus.success),
    );

    final successMessage = Message(
      id: 0,
      type: MessageType.assistant,
      status: MessageStatus.success,
      chatId: chatId,
      content: result,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final messageId = await _chatRepository.saveMessage(
      chatId: chatId,
      message: successMessage,
    );

    if (messageId == null) {
      return null;
    }

    return successMessage.copyWith(id: messageId);
  }

  Future<Message?> reSendMessage({
    required int chatId,
    required Message message,
  }) async {
    final allMessages = await _chatRepository.getMessages(chatId);

    final result = await _chatRepository.sendMessages(
      chatId: chatId,
      messages: [...allMessages ?? [], message],
    );

    if (result == null) {
      await _chatRepository.updateMessage(
        chatId: chatId,
        message: message.copyWith(status: MessageStatus.error),
      );

      return null;
    }

    await _chatRepository.updateMessage(
      chatId: chatId,
      message: message.copyWith(status: MessageStatus.success),
    );

    final successMessage = Message(
      id: 0,
      type: MessageType.assistant,
      status: MessageStatus.success,
      chatId: chatId,
      content: result,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final messageId = await _chatRepository.saveMessage(
      chatId: chatId,
      message: successMessage,
    );

    if (messageId == null) {
      return null;
    }

    return successMessage.copyWith(id: messageId);
  }

  Future<bool> clearAllMessagesFromChatId(int chatId) {
    return _chatRepository.clearAllMessagesFromChatId(chatId);
  }
}
