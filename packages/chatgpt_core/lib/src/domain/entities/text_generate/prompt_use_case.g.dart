// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromptUseCaseImpl _$$PromptUseCaseImplFromJson(Map<String, dynamic> json) =>
    _$PromptUseCaseImpl(
      name: json['name'] as String,
      listSubPromptUseCase: (json['listSubPromptUseCase'] as List<dynamic>)
          .map((e) => SubPromptUseCase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromptUseCaseImplToJson(_$PromptUseCaseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'listSubPromptUseCase':
          instance.listSubPromptUseCase.map((e) => e.toJson()).toList(),
    };
