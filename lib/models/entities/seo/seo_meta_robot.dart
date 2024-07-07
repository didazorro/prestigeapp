import 'package:freezed_annotation/freezed_annotation.dart';

import 'seo_robot_name.dart';

part 'seo_meta_robot.freezed.dart';
part 'seo_meta_robot.g.dart';

@freezed
class SeoMetaRobot with _$SeoMetaRobot {
  const SeoMetaRobot._();

  const factory SeoMetaRobot({
    @JsonKey(readValue: _readValueRobotsName) required SeoRobotsName name,
    required String content,
  }) = _SeoMetaRobot;

  factory SeoMetaRobot.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaRobotFromJson(json);
}

Object? _readValueRobotsName(Map p1, String p2) {
  final listKey = SeoRobotsName.values.map((e) => e.name).toList();

  if (listKey.contains(p1[p2])) {
    return p1[p2];
  }

  return SeoRobotsName.values.first.name;
}
