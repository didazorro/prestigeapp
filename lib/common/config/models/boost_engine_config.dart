class BoostEngineConfig {
  const BoostEngineConfig({
    this.api,
    this.key,
    this.defaultLanguage,
    this.languages = const [],
    this.isMultiLanguages = false,
    this.isOptimizeEnable = false,
    this.enableAnalytics = false,
  });

  final String? api;
  final String? key;
  final String? defaultLanguage;
  final List<String> languages;
  final bool isMultiLanguages;
  final bool isOptimizeEnable;
  final bool enableAnalytics;

  factory BoostEngineConfig.fromJson(Map json) {
    return BoostEngineConfig(
      api: json['api'],
      key: json['key'],
      defaultLanguage: json['defaultLanguage'],
      languages: List<String>.from(json['languages'] ?? []),
      isMultiLanguages: json['isMultiLanguages'] ?? false,
      isOptimizeEnable: json['isOptimizeEnable'] ?? false,
      enableAnalytics: json['enableAnalytics'] ?? false,
    );
  }

  BoostEngineConfig copyWith({
    String? api,
    String? key,
    String? defaultLanguage,
    List<String>? languages,
    bool? isMultiLanguages,
    bool? isOptimizeEnable,
    bool? enableAnalytics,
  }) {
    return BoostEngineConfig(
      api: api ?? this.api,
      key: key ?? this.key,
      defaultLanguage: defaultLanguage ?? this.defaultLanguage,
      languages: languages ?? this.languages,
      isMultiLanguages: isMultiLanguages ?? this.isMultiLanguages,
      isOptimizeEnable: isOptimizeEnable ?? this.isOptimizeEnable,
      enableAnalytics: enableAnalytics ?? this.enableAnalytics,
    );
  }

  Map<String, dynamic> toJson() {
    var map = Map<String, dynamic>.from({
      'api': api,
      'key': key,
      'isMultiLanguages': isMultiLanguages,
      'defaultLanguage': defaultLanguage,
      'languages': languages,
      'isOptimizeEnable': isOptimizeEnable,
      'enableAnalytics': enableAnalytics,
    });
    map.removeWhere((key, value) => value == null);
    return map;
  }
}
