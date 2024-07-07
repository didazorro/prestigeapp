// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_seo_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaSeoAppImpl _$$MetaSeoAppImplFromJson(Map<String, dynamic> json) =>
    _$MetaSeoAppImpl(
      excludes: (json['excludes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      config: SeoConfig.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaSeoAppImplToJson(_$MetaSeoAppImpl instance) =>
    <String, dynamic>{
      'excludes': instance.excludes,
      'config': instance.config.toJson(),
    };
