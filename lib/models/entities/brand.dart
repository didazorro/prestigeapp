import 'package:html_unescape/html_unescape.dart';

import '../../common/constants.dart';

class Brand {
  dynamic id;
  String? name;
  String? slug;
  String? description;
  String? image;
  int? count;

  // As the old logic, still show all tags
  bool isVisible = true;

  Brand({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.image,
    this.count,
    this.isVisible = true,
  });

  Brand.fromJson(Map parsedJson) {
    try {
      id = parsedJson['id'].toString();
      final rawName = parsedJson['name']?.toString();
      name = rawName != null ? HtmlUnescape().convert(rawName).trim() : null;
      slug = parsedJson['slug'];
      description = parsedJson['description'];
      if (parsedJson['image'] != null) {
        image = parsedJson['image']['src'];
      }
      count = parsedJson['count'];
      isVisible = parsedJson['is_visible'] ?? true;
    } catch (e, trace) {
      printLog(trace);
      printLog('Brand $name error: ${e.toString()}');
    }
  }

  Brand.fromBigCommerce(dynamic json) {
    try {
      id = json['id'].toString();
      name = json['name'] as String;
      image = ((json['image_url'] as String?)?.isNotEmpty ?? false)
          ? json['image_url']
          : kDefaultImage;
      description = json['meta_description'];
    } catch (e, trace) {
      printLog(trace);
      printLog('Brand $name error: ${e.toString()}');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'description': description,
      'image': image,
      'count': count,
      'is_visible': isVisible
    };
  }

  @override
  String toString() => 'Brand {id: $id, name: $name}';
}

extension ExtListBrand on List<Brand> {
  void merge(List<Brand> brands) {
    for (var brand in brands) {
      final index = indexWhere((element) => element.id == brand.id);

      if (index == -1) {
        add(brand);
      } else {
        this[index] = brand;
      }
    }
  }
}
