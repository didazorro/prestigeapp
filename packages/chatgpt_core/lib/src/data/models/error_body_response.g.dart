// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_body_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorBodyResponse _$ErrorBodyResponseFromJson(Map<String, dynamic> json) =>
    ErrorBodyResponse(
      message: json['message'] as String? ?? '',
      type: json['type'] as String?,
      param: json['param'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ErrorBodyResponseToJson(ErrorBodyResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'param': instance.param,
      'code': instance.code,
    };
