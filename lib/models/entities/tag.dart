import 'dart:convert';

import 'package:html_unescape/html_unescape.dart';
import 'package:quiver/strings.dart';

import '../../common/constants.dart';

class Tag {
  String? id;
  String? name;
  String? slug;
  String? description;

  // Cannot use `count` value to determine whether to show in the filter or not
  // because it depends on old logic
  int? count;

  // As the old logic, still show all tags
  bool isVisible = true;

  Tag({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.count,
    this.isVisible = true,
  });

  Tag.fromJson(Map json) {
    try {
      id = json['id']?.toString();
      final rawName = json['name']?.toString();
      name = rawName != null ? HtmlUnescape().convert(rawName).trim() : null;
      slug = json['slug'];
      description = json['description'];
      count = json['count'];
      isVisible = json['is_visible'] ?? true;
    } catch (e, trace) {
      printLog(e.toString());
      printLog(trace.toString());
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['description'] = description;
    data['count'] = count;
    data['is_visible'] = isVisible;
    return data;
  }

  @override
  String toString() => 'Tag ${jsonEncode(toJson())}';

  static List<Tag> parseTagList(response) {
    final tags = <Tag>[];
    if (response is Map && isNotBlank(response['message'])) {
      printLog('[Exception tag_model.dart - parseTagList]');
      printLog(response['message']);
      return <Tag>[];

      /// throw Exception(response['message']);
    } else {
      if (response is List) {
        for (var item in response) {
          final tag = Tag.fromJson(item);
          tags.add(tag);
        }
      }
      return tags;
    }
  }
}
