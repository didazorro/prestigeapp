// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewConfigImpl _$$ReviewConfigImplFromJson(Map<String, dynamic> json) =>
    _$ReviewConfigImpl(
      service:
          $enumDecodeNullable(_$ReviewServiceTypeEnumMap, json['service']) ??
              ReviewServiceType.native,
      enableReview: json['enableReview'] as bool? ?? false,
      enableReviewImage: json['enableReviewImage'] as bool? ?? false,
      maxImage: (json['maxImage'] as num?)?.toInt() ?? 2,
      judgeConfig: json['judgeConfig'] == null
          ? const JudgeServiceConfig()
          : JudgeServiceConfig.fromJson(
              json['judgeConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewConfigImplToJson(_$ReviewConfigImpl instance) =>
    <String, dynamic>{
      'service': _$ReviewServiceTypeEnumMap[instance.service]!,
      'enableReview': instance.enableReview,
      'enableReviewImage': instance.enableReviewImage,
      'maxImage': instance.maxImage,
      'judgeConfig': instance.judgeConfig.toJson(),
    };

const _$ReviewServiceTypeEnumMap = {
  ReviewServiceType.native: 'native',
  ReviewServiceType.judge: 'judge',
};
