// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seo_meta_robot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeoMetaRobotImpl _$$SeoMetaRobotImplFromJson(Map<String, dynamic> json) =>
    _$SeoMetaRobotImpl(
      name: $enumDecode(
          _$SeoRobotsNameEnumMap, _readValueRobotsName(json, 'name')),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$SeoMetaRobotImplToJson(_$SeoMetaRobotImpl instance) =>
    <String, dynamic>{
      'name': _$SeoRobotsNameEnumMap[instance.name]!,
      'content': instance.content,
    };

const _$SeoRobotsNameEnumMap = {
  SeoRobotsName.robots: 'robots',
  SeoRobotsName.google: 'google',
  SeoRobotsName.googleBot: 'googleBot',
  SeoRobotsName.googleBotNews: 'googleBotNews',
  SeoRobotsName.googleSiteVerification: 'googleSiteVerification',
};
