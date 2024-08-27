import 'package:hive/hive.dart';

import '../../../core/components/constants/hive_constant.dart';
import '../../../domain/entities/message/message.dart';
import '../../../domain/entities/message/message_status.dart';
import '../../../domain/entities/message/message_type.dart';

part 'message_model_hive.g.dart';

@HiveType(typeId: HiveConstant.messageTypeId)
class MessageModelHive extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  int chatId;

  @HiveField(2)
  String content;

  @HiveField(3)
  int createdAt;

  @HiveField(4)
  int? updatedAt;

  @HiveField(5)
  String type;

  @HiveField(6)
  String status;

  MessageModelHive({
    required this.id,
    required this.chatId,
    required this.content,
    required this.createdAt,
    this.updatedAt,
    required this.type,
    required this.status,
  });

  Message toEntity() {
    return Message(
      id: id,
      chatId: chatId,
      content: content,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: updatedAt != null
          ? DateTime.fromMillisecondsSinceEpoch(updatedAt!)
          : DateTime.fromMillisecondsSinceEpoch(createdAt),
      status: MessageStatus.values.firstWhere(
        (e) => e.name == status,
      ),
      type: MessageType.values.firstWhere(
        (e) => e.name.toLowerCase() == type,
      ),
    );
  }

  factory MessageModelHive.fromEntity(Message message) {
    return MessageModelHive(
      id: message.id,
      chatId: message.chatId,
      content: message.content,
      createdAt: message.createdAt.millisecondsSinceEpoch,
      updatedAt: message.updatedAt?.millisecondsSinceEpoch,
      type: message.type.name.toLowerCase(),
      status: message.status.name,
    );
  }

  Map toJson() {
    // It will throw an error if the role is not in lower case
    return {
      'role': type.toLowerCase(),
      'content': content,
    };
  }
}
