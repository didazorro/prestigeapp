import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../services/index.dart';
import 'entities/filter_attribute.dart';
import 'mixins/language_mixin.dart';

class FilterAttributeModel with ChangeNotifier, LanguageMixin {
  final Services _service = Services();

  /// List all attributes
  List<FilterAttribute>? lstProductAttribute;

  Iterable<FilterAttribute>? get listVisibleAttribute =>
      lstProductAttribute?.where((element) => element.isVisible);

  /// List all sub attributes of each attribute by id
  Map<int, List<SubAttribute>> lstSubAttribute = {};

  /// Current status of each attribute by id
  Map<int, bool> isEndSub = {};

  /// Current loading status of each attribute by id
  Map<int, bool> isLoadingSub = {};

  /// Current pages of each attribute by id
  Map<int, int> currentPages = {};

  /// Loading status of all attributes
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? getAttributeName(int? attributeId) {
    return lstProductAttribute
        ?.firstWhereOrNull((element) => element.id == attributeId)
        ?.name;
  }

  Future<void> getFilterAttributes({
    String? categoryIds,
    String? tagIds,
    String? brandIds,
  }) async {
    try {
      _isLoading = true;
      notifyListeners();
      lstProductAttribute = await _service.api.getFilterAttributes(
        categoryIds: categoryIds,
        tagIds: tagIds,
        brandIds: brandIds,
      );
      notifyListeners();
      if (lstProductAttribute != null) {
        final getSubAttributesFutures = <Future>[];
        for (var item in lstProductAttribute!) {
          getSubAttributesFutures.add(getSubAttributes(attributeId: item.id!));
        }
        await Future.wait(getSubAttributesFutures);
      }
    } catch (e, trace) {
      printError(e, trace);
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<List<SubAttribute>?> getSubAttributes(
      {required int attributeId}) async {
    try {
      if (isEndSub[attributeId] == true) {
        return lstSubAttribute[attributeId];
      } else {
        isLoadingSub[attributeId] = true;
        notifyListeners();
      }

      /// If the same id, load the next page. Otherwise, load the first page
      final page =
          currentPages[attributeId] = (currentPages[attributeId] ?? 0) + 1;
      final data = (await _service.api.getSubAttributes(
            id: attributeId,
            page: page,
            perPage: apiPageSize,
          )) ??
          <SubAttribute>[];

      var subAttributes = lstSubAttribute[attributeId] ?? [];
      if ((subAttributes.isEmpty)) {
        subAttributes = data;
      } else {
        subAttributes.addAll(data);
      }

      lstSubAttribute.update(
        attributeId,
        (value) => subAttributes,
        ifAbsent: () => subAttributes,
      );

      if (data.isEmpty || data.length < apiPageSize) {
        isEndSub[attributeId] = true;
      }

      // Remove duplicates item
      subAttributes = lstSubAttribute[attributeId] ?? [];

      final subAttributeIds = subAttributes
          .map((e) => e.id)
          .toSet()
          .toList(); // Get distinct list id

      lstSubAttribute[attributeId]
          ?.retainWhere((element) => subAttributeIds.remove(element.id));

      isLoadingSub[attributeId] = false;
      notifyListeners();

      return lstSubAttribute[attributeId];
    } catch (e, trace) {
      printError(e, trace);
    }
    isLoadingSub[attributeId] = false;
    notifyListeners();
    return lstSubAttribute[attributeId];
  }
}
