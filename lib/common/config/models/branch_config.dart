class BranchConfig {
  bool enable = false;

  BranchConfig.fromJson(dynamic json) {
    enable = json['enable'] ?? false;
  }

  Map toJson() {
    var map = <String, dynamic>{};
    map['enable'] = enable;
    return map;
  }
}
