// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_prompt_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubPromptUseCaseImpl _$$SubPromptUseCaseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubPromptUseCaseImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$PromptUseCaseTypeEnumMap, json['type']),
      promptText: json['promptText'] as String? ?? '',
    );

Map<String, dynamic> _$$SubPromptUseCaseImplToJson(
        _$SubPromptUseCaseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': _$PromptUseCaseTypeEnumMap[instance.type]!,
      'promptText': instance.promptText,
    };

const _$PromptUseCaseTypeEnumMap = {
  PromptUseCaseType.about: 'about',
  PromptUseCaseType.sectionTopic: 'sectionTopic',
  PromptUseCaseType.sectionKeywords: 'sectionKeywords',
  PromptUseCaseType.interest: 'interest',
  PromptUseCaseType.skills: 'skills',
  PromptUseCaseType.jobRole: 'jobRole',
  PromptUseCaseType.jobSkills: 'jobSkills',
  PromptUseCaseType.prompt: 'prompt',
};
