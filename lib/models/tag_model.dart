import 'dart:async';

import 'package:collection/collection.dart';

import '../common/constants.dart';
import 'entities/paging_response.dart';
import 'entities/tag.dart';
import 'mixins/language_mixin.dart';
import 'paging_data_model.dart';

class TagPayload {
  final String? categoryIds;
  final String? brandIds;

  const TagPayload({
    this.categoryIds,
    this.brandIds,
  });
}

class TagModel extends PagingDataModel<Tag> with LanguageMixin {
  String? message;

  StreamSubscription? _subLanguageChange;

  int _limit = apiPageSize;

  TagPayload? _payload;

  TagModel([int? limit]) {
    _subLanguageChange = eventBus.on<EventChangeLanguage>().listen((event) {
      getTags(payload: _payload);
    });

    if (limit != null) {
      _limit = limit;
    }
  }

  UnmodifiableListView<Tag>? get tagList => data;

  Iterable<Tag>? get listVisibleTag =>
      data.where((element) => element.isVisible);

  String getTagName(String? tagId) {
    if (tagId == null) return '';
    return tagList?.firstWhereOrNull((element) => element.id == tagId)?.name ??
        tagId;
  }

  @override
  void dispose() {
    _subLanguageChange?.cancel();
    super.dispose();
  }

  Future<void> getTags({TagPayload? payload}) async {
    _payload = payload;

    await refresh(autoGetData: false);
    await getData();
  }

  Future<void> loadMoreTags() async {
    await getData();
  }

  @override
  Future<PagingResponse<Tag>> Function(dynamic p1) get requestApi =>
      (page) => api.getTagsByPage(
            limit: _limit,
            page: page,
            categoryIds: _payload?.categoryIds,
            brandIds: _payload?.brandIds,
          );
}
