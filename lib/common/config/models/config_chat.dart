class ConfigChat {
  final bool enableSmartChat;
  final bool enableVendorChat;
  final bool useRealtimeChat;
  final List<String> showOnScreens;
  final List<String> hideOnScreens;
  final String version;

  const ConfigChat({
    this.enableSmartChat = true,
    this.enableVendorChat = true,
    this.useRealtimeChat = false,
    this.showOnScreens = const [],
    this.hideOnScreens = const [],
    this.version = '2',
  });

  factory ConfigChat.fromJson(Map json) {
    return ConfigChat(
      enableSmartChat: json['EnableSmartChat'] ?? true,
      enableVendorChat: json['enableVendorChat'] ?? true,
      useRealtimeChat: json['UseRealtimeChat'] ?? false,
      showOnScreens: List<String>.from(json['showOnScreens'] ?? []),
      hideOnScreens: List<String>.from(json['hideOnScreens'] ?? []),
      version: json['version'] ?? '2',
    );
  }

  Map toJson() {
    var map = <String, dynamic>{
      'EnableSmartChat': enableSmartChat,
      'enableVendorChat': enableVendorChat,
      'UseRealtimeChat': useRealtimeChat,
      'showOnScreens': showOnScreens,
      'hideOnScreens': hideOnScreens,
      'version': version,
    };
    return map;
  }

  ConfigChat copyWith({
    bool? enableSmartChat,
    bool? enableVendorChat,
    bool? useRealtimeChat,
    List<String>? showOnScreens,
    List<String>? hideOnScreens,
    String? version,
  }) {
    return ConfigChat(
      enableSmartChat: enableSmartChat ?? this.enableSmartChat,
      enableVendorChat: enableVendorChat ?? this.enableVendorChat,
      useRealtimeChat: useRealtimeChat ?? this.useRealtimeChat,
      showOnScreens: showOnScreens ?? this.showOnScreens,
      hideOnScreens: hideOnScreens ?? this.hideOnScreens,
      version: version ?? this.version,
    );
  }
}
