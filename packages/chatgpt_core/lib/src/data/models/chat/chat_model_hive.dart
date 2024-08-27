import 'package:hive/hive.dart';

import '../../../core/components/constants/hive_constant.dart';
import '../../../domain/entities/chat/chat.dart';

part 'chat_model_hive.g.dart';

@HiveType(typeId: HiveConstant.chatTypeId)
class ChatModelHive extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String? description;

  @HiveField(3)
  int createdAt;

  @HiveField(4)
  int? updatedAt;

  ChatModelHive({
    required this.id,
    required this.title,
    this.description,
    required this.createdAt,
    this.updatedAt,
  });

  Chat toEntity() {
    return Chat(
      id: id,
      title: title,
      description: description,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: updatedAt != null
          ? DateTime.fromMillisecondsSinceEpoch(updatedAt!)
          : DateTime.fromMillisecondsSinceEpoch(createdAt),
      // messages: messages.map((e) => e.toEntity()).toList(),
    );
  }
}
