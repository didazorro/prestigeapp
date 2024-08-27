// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageModelHiveAdapter extends TypeAdapter<MessageModelHive> {
  @override
  final int typeId = 2;

  @override
  MessageModelHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageModelHive(
      id: fields[0] as int,
      chatId: fields[1] as int,
      content: fields[2] as String,
      createdAt: fields[3] as int,
      updatedAt: fields[4] as int?,
      type: fields[5] as String,
      status: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MessageModelHive obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.chatId)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageModelHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
