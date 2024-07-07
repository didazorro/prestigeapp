import 'package:html_unescape/html_unescape.dart';

class FilterAttribute {
  int? id;
  String? slug;
  String? name;
  bool isVisible = true;

  FilterAttribute.fromJson(Map parsedJson) {
    id = parsedJson['id'];
    slug = parsedJson['slug'];
    final rawName = parsedJson['name']?.toString();
    name = rawName != null ? HtmlUnescape().convert(rawName).trim() : null;
    isVisible = parsedJson['is_visible'] ?? true;
  }
}

class SubAttribute {
  int? id;
  String? name;
  int? count;

  SubAttribute.fromJson(Map parsedJson) {
    id = parsedJson['id'];
    final rawName = parsedJson['name']?.toString();
    name = rawName != null ? HtmlUnescape().convert(rawName).trim() : null;
    count = parsedJson['count'];
  }

  @override
  String toString() {
    return '[id: $id ===== name: $name]';
  }
}
