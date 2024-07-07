// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_seo_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaSeoRouteImpl _$$MetaSeoRouteImplFromJson(Map<String, dynamic> json) =>
    _$MetaSeoRouteImpl(
      route: json['route'] as String,
      config: SeoConfig.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaSeoRouteImplToJson(_$MetaSeoRouteImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'config': instance.config.toJson(),
    };
