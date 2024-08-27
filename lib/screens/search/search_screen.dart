import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../modules/dynamic_layout/index.dart';
import '../../services/index.dart';
import '../common/app_bar_mixin.dart';
import 'layouts/products_search_layout.dart';
import 'widgets/search_widget.dart';

class SearchScreen extends StatefulWidget {
  final bool isModal;
  final bool autoFocusSearch;
  final bool? boostEngine;
  final bool? showQRCode;

  const SearchScreen({
    super.key,
    this.isModal = false,
    this.autoFocusSearch = true,
    this.boostEngine,
    this.showQRCode,
  });

  @override
  State<SearchScreen> createState() => _StateSearchScreen();
}

class _StateSearchScreen extends State<SearchScreen>
    with AutomaticKeepAliveClientMixin<SearchScreen>, AppBarMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    printLog('[SearchScreen] build');
    super.build(context);

    /// Use the old Search UX config which is limit Filter
    if (Services().widget.enableProductBackdrop) {
      return SearchWidget(
        isModal: widget.isModal,
        showQRCode: widget.showQRCode,
      );
    }

    return ProductsSearchLayout(
      autoFocusSearch: widget.autoFocusSearch,
      config: ProductConfig.empty()
        ..layout = Layout.listTile
        ..boostEngine = widget.boostEngine,
      showQRCode: widget.showQRCode,
    );
  }
}
