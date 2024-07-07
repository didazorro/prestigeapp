// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentCardConfigImpl _$$PaymentCardConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentCardConfigImpl(
      enable: json['enable'] as bool? ?? false,
      serverEndpoint: json['serverEndpoint'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentCardConfigImplToJson(
        _$PaymentCardConfigImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'serverEndpoint': instance.serverEndpoint,
    };
