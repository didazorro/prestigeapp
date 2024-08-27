class DynamicLinkConfig {
  final bool _enable;
  final DynamicLinkType type;
  final BranchIOConfig branchIOConfig;
  final Map _firebaseDynamicLinkConfig;

  DynamicLinkConfig({
    required bool enable,
    required this.type,
    required Map firebaseDynamicLinkConfig,
    required this.branchIOConfig,
  })  : _enable = enable,
        _firebaseDynamicLinkConfig = firebaseDynamicLinkConfig;

  bool get enable {
    if (type.isBranchIO) {
      return _enable;
    }
    // TODO(tgloc): Remove this when all the user has migrated to the branchIO
    return _firebaseDynamicLinkConfig['isEnabled'] ?? false;
  }

  factory DynamicLinkConfig.fromJson(Map<String, dynamic> json) {
    return DynamicLinkConfig(
      enable: json['enable'] ?? false,
      type: DynamicLinkType.fromString(json['type'] ?? ''),
      firebaseDynamicLinkConfig: json['firebaseDynamicLinkConfig'] ?? {},
      branchIOConfig: BranchIOConfig.fromJson(json['branchIO'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'enable': enable,
      'type': type.name,
      'branchIO': branchIOConfig.toJson(),
    };
  }
}

enum DynamicLinkType {
  branchIO,
  firebase,
  ;

  bool get isFirebase => this == DynamicLinkType.firebase;

  bool get isBranchIO => this == DynamicLinkType.branchIO;

  static DynamicLinkType fromString(String type) {
    switch (type) {
      case 'branchIO':
        return DynamicLinkType.branchIO;
      default:
        // If the type is not specified, that's mean using the old config of the dynamic link
        // So, we will use the firebase as the default type
        return DynamicLinkType.firebase;
    }
  }
}

class BranchIOConfig {
  final bool liveMode;

  BranchIOConfig({
    required this.liveMode,
  });

  bool get useTestKey => !liveMode;

  factory BranchIOConfig.fromJson(Map<String, dynamic> json) {
    return BranchIOConfig(
      liveMode: json['liveMode'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'liveMode': liveMode,
    };
  }
}
