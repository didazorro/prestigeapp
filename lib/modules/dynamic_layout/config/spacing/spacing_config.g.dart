// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacing_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpacingConfigImpl _$$SpacingConfigImplFromJson(Map<String, dynamic> json) =>
    _$SpacingConfigImpl(
      marginConfig: json['margin'] == null
          ? null
          : EdgeConfig.fromJson(json['margin'] as Map<String, dynamic>),
      paddingConfig: json['padding'] == null
          ? null
          : EdgeConfig.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpacingConfigImplToJson(_$SpacingConfigImpl instance) =>
    <String, dynamic>{
      'margin': instance.marginConfig?.toJson(),
      'padding': instance.paddingConfig?.toJson(),
    };
