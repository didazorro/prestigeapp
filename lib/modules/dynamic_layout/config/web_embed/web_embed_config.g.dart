// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_embed_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebEmbedConfigImpl _$$WebEmbedConfigImplFromJson(Map<String, dynamic> json) =>
    _$WebEmbedConfigImpl(
      type: $enumDecodeNullable(_$WebEmbedTypeEnumMap, json['type']) ??
          WebEmbedType.url,
      data: json['data'] as String? ?? '',
      height: (json['height'] as num?)?.toDouble() ?? _defaultHeight,
      spacing: json['spacing'] == null
          ? const SpacingConfig()
          : SpacingConfig.fromJson(json['spacing'] as Map<String, dynamic>),
      script: json['script'] as String?,
      navigator: json['navigator'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WebEmbedConfigImplToJson(
        _$WebEmbedConfigImpl instance) =>
    <String, dynamic>{
      'type': _$WebEmbedTypeEnumMap[instance.type]!,
      'data': instance.data,
      'height': instance.height,
      'spacing': instance.spacing.toJson(),
      'script': instance.script,
      'navigator': instance.navigator,
    };

const _$WebEmbedTypeEnumMap = {
  WebEmbedType.url: 'url',
  WebEmbedType.iframe: 'iframe',
  WebEmbedType.html: 'html',
};
