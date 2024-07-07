class Branch {
  late String id;
  late String name;
  late int count;
  late String description;

  Branch.fromJson(dynamic json) {
    id = '${json['id']}';
    name = json['name'] ?? '';
    count = int.tryParse('${json['count']}') ?? 0;
    description = json['description'] ?? '';
  }

  Map toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['count'] = count;
    map['description'] = description;
    return map;
  }
}
