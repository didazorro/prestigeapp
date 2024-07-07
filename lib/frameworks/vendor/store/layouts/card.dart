import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../common/config.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/vendor/store_model.dart';
import '../../../../widgets/vendor/store_item.dart';

class CardStores extends StatefulWidget {
  static const String type = 'card';
  final String? searchName;

  const CardStores({
    this.searchName,
  });

  @override
  State<CardStores> createState() => _StateCardStores();
}

class _StateCardStores extends State<CardStores> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var searchName = widget.searchName ?? '';

    return Consumer<StoreModel>(
      builder: (context, model, child) {
        if (model.stores == null) {
          return Center(
            child: kLoadingWidget(context),
          );
        }

        var stores = model.stores!;

        if (stores.isEmpty && (widget.searchName?.isNotEmpty ?? false)) {
          return Center(
            child: Text(S.of(context).noResultFound),
          );
        }

        if (stores.isEmpty && !model.isLoading) {
          return Center(
            child: Text(S.of(context).dataEmpty),
          );
        }

        // If both enablePullDown and enablePullUp are set to false, it will cause this bug https://github.com/peng8350/flutter_pulltorefresh/issues/476
        return SmartRefresher(
          enablePullDown: true,
          enablePullUp: !model.isEnd,
          controller: _refreshController,
          onRefresh: () {
            model.refreshStore(
              name: searchName,
              onFinish: () {
                _refreshController.refreshCompleted();
              },
            );
          },
          onLoading: () {
            model.loadStore(
              name: searchName,
              onFinish: () {
                _refreshController.loadComplete();
              },
            );
          },
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 12),
            itemCount: stores.length,
            itemBuilder: (_, index) {
              return StoreItem(
                store: stores[index],
              );
            },
          ),
        );
      },
    );
  }
}
