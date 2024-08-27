import '../entities/chat/chat.dart';
import '../entities/message/message.dart';

abstract class ChatRepository {
  Future<List<Chat>> getChats();

  Future<List<Message>?> getMessages(int chatId);

  Future<String?> sendMessages({
    required int chatId,
    required List<Message> messages,
  });

  Future<int?> saveMessage({
    required int chatId,
    required Message message,
  });

  Future<Chat> createChat();

  Future<bool> updateChat(Chat chat);

  Future<bool> deleteChat(int chatId);

  Future<bool> deleteMessage({
    required int chatId,
    required int messageId,
  });

  Future<bool> updateMessage({
    required int chatId,
    required Message message,
  });

  Future<bool> clearAllMessagesFromChatId(int chatId);
}
