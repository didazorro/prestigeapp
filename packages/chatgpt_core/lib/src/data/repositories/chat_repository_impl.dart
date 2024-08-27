import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/chat/chat.dart';
import '../../domain/entities/message/message.dart';
import '../../domain/repositories/chat_repository.dart';
import '../datasource/remote/supabase_api.dart';
import '../models/chat/chat_model_hive.dart';
import '../models/message/message_model_hive.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImpl extends ChatRepository {
  final Box<ChatModelHive> _box;
  final SupabaseApi _supabaseApi;

  ChatRepositoryImpl(
    this._box,
    this._supabaseApi,
  );

  Future<Box<MessageModelHive>> messageBox(int chatId) async =>
      await Hive.openBox<MessageModelHive>('messages_$chatId');

  @override
  Future<Chat> createChat() async {
    final chatModel = ChatModelHive(
      id: 0,
      title: 'New Chat',
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    final id = await _box.add(chatModel);

    chatModel.id = id;

    await _box.put(id, chatModel);

    return chatModel.toEntity();
  }

  @override
  Future<bool> deleteChat(int chatId) async {
    await _box.delete(chatId);

    return true;
  }

  @override
  Future<bool> deleteMessage({
    required int chatId,
    required int messageId,
  }) async {
    final messages = await messageBox(chatId);
    await messages.delete(messageId);
    return true;
  }

  @override
  Future<List<Chat>> getChats() async {
    return _box.values.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<Message>?> getMessages(int chatId) async {
    final messages = await messageBox(chatId);

    return messages.values.map((e) => e.toEntity()).toList();
  }

  @override
  Future<String?> sendMessages({
    required int chatId,
    required List<Message> messages,
  }) async {
    final body = {
      'messages':
          messages.map((e) => MessageModelHive.fromEntity(e).toJson()).toList(),
    };

    final result = await _supabaseApi.chat(body);

    return result.data.content;
  }

  @override
  Future<int?> saveMessage({
    required int chatId,
    required Message message,
  }) async {
    final messages = await messageBox(chatId);

    final messageModel = MessageModelHive.fromEntity(message);

    final id = await messages.add(messageModel);

    messageModel.id = id;

    await messageModel.save();

    return id;
  }

  @override
  Future<bool> updateChat(Chat chat) async {
    final chatModel = _box.get(chat.id);

    if (chatModel == null) return false;

    chatModel
      ..title = chat.title
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await chatModel.save();

    return true;
  }

  @override
  Future<bool> updateMessage({
    required int chatId,
    required Message message,
  }) async {
    final messages = await messageBox(chatId);
    final messageModel = messages.get(message.id);

    if (messageModel == null) return false;

    messageModel
      ..chatId = chatId
      ..type = message.type.name
      ..status = message.status.name
      ..content = message.content
      ..createdAt = message.createdAt.millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await messageModel.save();

    return true;
  }

  @override
  Future<bool> clearAllMessagesFromChatId(int chatId) async {
    final messages = await messageBox(chatId);
    await messages.clear();
    return true;
  }
}
