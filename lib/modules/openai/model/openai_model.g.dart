// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatGPTImpl _$$ChatGPTImplFromJson(Map<String, dynamic> json) =>
    _$ChatGPTImpl(
      enableChat: json['enableChat'] as bool? ?? false,
      supabaseAnonKey: json['supabaseAnonKey'] ?? '',
      supabaseUrl: json['supabaseUrl'] ?? '',
      enableSubscription: json['enableSubscription'] as bool? ?? false,
      enableInputKey: json['enableInputKey'] as bool? ?? false,
      revenueAppleApiKey: json['revenueAppleApiKey'] ?? '',
      revenueGoogleApiKey: json['revenueGoogleApiKey'] ?? '',
      revenueProductsIos: (json['revenueProductsIos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      revenueProductsAndroid: (json['revenueProductsAndroid'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChatGPTImplToJson(_$ChatGPTImpl instance) =>
    <String, dynamic>{
      'enableChat': instance.enableChat,
      'supabaseAnonKey': instance.supabaseAnonKey,
      'supabaseUrl': instance.supabaseUrl,
      'enableSubscription': instance.enableSubscription,
      'enableInputKey': instance.enableInputKey,
      'revenueAppleApiKey': instance.revenueAppleApiKey,
      'revenueGoogleApiKey': instance.revenueGoogleApiKey,
      'revenueProductsIos': instance.revenueProductsIos,
      'revenueProductsAndroid': instance.revenueProductsAndroid,
    };
