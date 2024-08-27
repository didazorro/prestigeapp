// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromptModelImpl _$$PromptModelImplFromJson(Map<String, dynamic> json) =>
    _$PromptModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['content'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$PromptModelImplToJson(_$PromptModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.description,
      'imageUrl': instance.imageUrl,
    };
