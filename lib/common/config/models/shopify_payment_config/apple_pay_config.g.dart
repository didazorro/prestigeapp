// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_pay_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplePayConfigImpl _$$ApplePayConfigImplFromJson(Map<String, dynamic> json) =>
    _$ApplePayConfigImpl(
      enable: json['enable'] as bool? ?? false,
      merchantId: json['merchantId'] as String? ?? '',
    );

Map<String, dynamic> _$$ApplePayConfigImplToJson(
        _$ApplePayConfigImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'merchantId': instance.merchantId,
    };
