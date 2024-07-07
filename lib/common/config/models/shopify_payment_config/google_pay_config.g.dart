// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_pay_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePayConfigImpl _$$GooglePayConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$GooglePayConfigImpl(
      enable: json['enable'] as bool? ?? false,
      stripePublishableKey: json['stripePublishableKey'] as String? ?? '',
      merchantId: json['merchantId'] as String? ?? '',
    );

Map<String, dynamic> _$$GooglePayConfigImplToJson(
        _$GooglePayConfigImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'stripePublishableKey': instance.stripePublishableKey,
      'merchantId': instance.merchantId,
    };
