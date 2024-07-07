class B2BKingConfig {
  final bool enabled;
  final String guestAccessRestriction;

  const B2BKingConfig({
    this.enabled = false,
    this.guestAccessRestriction = 'none',
  });

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'guestAccessRestriction': guestAccessRestriction,
    };
  }

  factory B2BKingConfig.fromJson(Map map) {
    return B2BKingConfig(
      enabled: (map['enabled'] as bool?) ?? false,
      guestAccessRestriction: map['guestAccessRestriction'] ?? 'none',
    );
  }
}
