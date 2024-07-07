import 'package:flutter/material.dart';

import '../../../common/tools/navigate_tools.dart';

class BannerGridConfig {
  final String startImage;
  final String endImage;
  final String centerTopImage;
  final String centerBottomImage;
  final String centerImage;
  final double borderRadius;
  final Map _config;

  bool get isCategory => _config['category'] != null;

  BannerGridConfig({
    required this.startImage,
    required this.endImage,
    required this.centerTopImage,
    required this.centerBottomImage,
    required this.centerImage,
    this.borderRadius = 8.0,
    Map? action,
  }) : _config = action ?? {};

  Map<String, dynamic> toJSon() {
    final newConfig = Map<String, dynamic>.from(_config);

    newConfig['startImage'] = startImage;
    newConfig['endImage'] = endImage;
    newConfig['centerTopImage'] = centerTopImage;
    newConfig['centerBottomImage'] = centerBottomImage;
    newConfig['centerImage'] = centerImage;
    newConfig['borderRadius'] = borderRadius;

    return newConfig;
  }

  factory BannerGridConfig.fromJson(Map<String, dynamic> map) {
    return BannerGridConfig(
      action: map,
      startImage: map['startImage'] ?? '',
      endImage: map['endImage'] ?? '',
      centerTopImage: map['centerTopImage'] ?? '',
      centerBottomImage: map['centerBottomImage'] ?? '',
      centerImage: map['centerImage'] ?? '',
      borderRadius: map['borderRadius'] ?? 8.0,
    );
  }

  BannerGridConfig copyWith({
    String? startImage,
    String? endImage,
    String? centerTopImage,
    String? centerBottomImage,
    String? centerImage,
    double? borderRadius,
    Map? action,
  }) {
    return BannerGridConfig(
      startImage: startImage ?? this.startImage,
      endImage: endImage ?? this.endImage,
      centerTopImage: centerTopImage ?? this.centerTopImage,
      centerBottomImage: centerBottomImage ?? this.centerBottomImage,
      centerImage: centerImage ?? this.centerImage,
      borderRadius: borderRadius ?? this.borderRadius,
      action: action ?? _config,
    );
  }

  @override
  String toString() {
    return 'BannerGridConfig(startImage: $startImage, endImage: $endImage, centerTopImage: $centerTopImage, centerBottomImage: $centerBottomImage, centerImage: $centerImage, borderRadius: $borderRadius)';
  }

  void run(BuildContext context) {
    NavigateTools.onTapNavigateOptions(context: context, config: _config);
  }
}
