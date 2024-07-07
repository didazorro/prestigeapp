// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_seo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaSeoConfigImpl _$$MetaSeoConfigImplFromJson(Map<String, dynamic> json) =>
    _$MetaSeoConfigImpl(
      app: json['app'] == null
          ? null
          : MetaSeoApp.fromJson(json['app'] as Map<String, dynamic>),
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => MetaSeoRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MetaSeoConfigImplToJson(_$MetaSeoConfigImpl instance) =>
    <String, dynamic>{
      'app': instance.app?.toJson(),
      'routes': instance.routes?.map((e) => e.toJson()).toList(),
    };
