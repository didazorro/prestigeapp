// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seo_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeoConfigImpl _$$SeoConfigImplFromJson(Map<String, dynamic> json) =>
    _$SeoConfigImpl(
      metaRobot: json['metaRobot'] == null
          ? null
          : SeoMetaRobot.fromJson(json['metaRobot'] as Map<String, dynamic>),
      metaKeyValue: json['metaKeyValue'] == null
          ? null
          : SeoMetaKeyValue.fromJson(
              json['metaKeyValue'] as Map<String, dynamic>),
      metaNameContent: json['metaNameContent'] == null
          ? null
          : SeoMetaNameContent.fromJson(
              json['metaNameContent'] as Map<String, dynamic>),
      metaPropertyContent: json['metaPropertyContent'] == null
          ? null
          : SeoMetaPropertyContent.fromJson(
              json['metaPropertyContent'] as Map<String, dynamic>),
      metaTwitter: json['metaTwitter'] == null
          ? null
          : SeoMetaTwitter.fromJson(
              json['metaTwitter'] as Map<String, dynamic>),
      author: json['author'] as String?,
      description: json['description'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      viewport: json['viewport'] as String?,
      httpEquiv: json['httpEquiv'] as String?,
      facebookAppID: json['facebookAppID'] as String?,
      ogTitle: json['ogTitle'] as String?,
      ogDescription: json['ogDescription'] as String?,
      ogImage: json['ogImage'] as String?,
    );

Map<String, dynamic> _$$SeoConfigImplToJson(_$SeoConfigImpl instance) =>
    <String, dynamic>{
      'metaRobot': instance.metaRobot?.toJson(),
      'metaKeyValue': instance.metaKeyValue?.toJson(),
      'metaNameContent': instance.metaNameContent?.toJson(),
      'metaPropertyContent': instance.metaPropertyContent?.toJson(),
      'metaTwitter': instance.metaTwitter?.toJson(),
      'author': instance.author,
      'description': instance.description,
      'keywords': instance.keywords,
      'viewport': instance.viewport,
      'httpEquiv': instance.httpEquiv,
      'facebookAppID': instance.facebookAppID,
      'ogTitle': instance.ogTitle,
      'ogDescription': instance.ogDescription,
      'ogImage': instance.ogImage,
    };
