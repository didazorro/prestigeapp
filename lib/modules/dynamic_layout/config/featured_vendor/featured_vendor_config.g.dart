// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_vendor_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedVendorConfigImpl _$$FeaturedVendorConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedVendorConfigImpl(
      name: json['name'] as String?,
      columnCount: (json['columnCount'] as num?)?.toInt() ?? 3,
      showRating: json['showRating'] as bool? ?? true,
      enableAutoSliding: json['enableAutoSliding'] as bool? ?? false,
      durationAutoSliding: (json['durationAutoSliding'] as num?)?.toInt(),
      enableBackground: json['enableBackground'] as bool? ?? false,
      isSnapping: json['isSnapping'] as bool? ?? false,
      limit: (json['limit'] as num?)?.toInt(),
      imageBoxfit: json['imageBoxfit'] as String? ?? 'cover',
      alignment: json['alignment'] as String? ?? 'centerStart',
    );

Map<String, dynamic> _$$FeaturedVendorConfigImplToJson(
        _$FeaturedVendorConfigImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'columnCount': instance.columnCount,
      'showRating': instance.showRating,
      'enableAutoSliding': instance.enableAutoSliding,
      'durationAutoSliding': instance.durationAutoSliding,
      'enableBackground': instance.enableBackground,
      'isSnapping': instance.isSnapping,
      'limit': instance.limit,
      'imageBoxfit': instance.imageBoxfit,
      'alignment': instance.alignment,
    };
