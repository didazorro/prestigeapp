// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdgeConfigImpl _$$EdgeConfigImplFromJson(Map<String, dynamic> json) =>
    _$EdgeConfigImpl(
      start:
          (_EdgeConfigHelper.parseOldConfig(json, 'start') as num?)?.toDouble(),
      end: (_EdgeConfigHelper.parseOldConfig(json, 'end') as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$EdgeConfigImplToJson(_$EdgeConfigImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'top': instance.top,
      'bottom': instance.bottom,
    };
