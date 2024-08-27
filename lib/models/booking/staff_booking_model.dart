class StaffBookingModel {
  int? id;
  String? displayName;
  String? email;
  String? username;
  // double? cost;

  StaffBookingModel({
    this.id,
    this.displayName,
    this.email,
    this.username,
  });

  StaffBookingModel.fromJson(Map json) {
    id = json['id'] ?? '' as int?;
    displayName = json['displayname'] ?? '';
    email = json['email'] ?? '';
    username = json['username'] ?? '';
    // cost = double.tryParse('${json['cost']}');
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'email': email,
      'username': username,
      // 'cost': cost,
    };
  }
}
