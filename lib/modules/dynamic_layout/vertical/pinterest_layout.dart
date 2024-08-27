import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../generated/l10n.dart';
import '../../../models/index.dart' show Product, ProductModel;
import '../../../services/index.dart' show ServerConfig, Services;
import '../../../widgets/common/background_color_widget.dart';
import '../../../widgets/common/paging_mixin.dart';
import '../../../widgets/product/product_quilted_card.dart';
import '../config/product_config.dart';
import '../helper/header_view.dart';
import '../helper/helper.dart';
import 'pinterest_card.dart';

class PinterestLayout extends StatefulWidget {
  final ProductConfig config;

  const PinterestLayout({required this.config});

  @override
  State<PinterestLayout> createState() => _PinterestLayoutState();
}

class _PinterestLayoutState extends State<PinterestLayout> with PagingMixin {
  final Services _service = Services();
  final ValueNotifier<bool> _canLoad = ValueNotifier(true);
  List<Product> _products = [];
  int _page = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _loadProduct();
  }

  Future<void> _loadProduct() async {
    if (_isLoading) {
      return;
    }
    _isLoading = true;
    var config = widget.config.toJson();
    _page = _page + 1;
    config['page'] = _page;
    config['limit'] = 10;

    List<Product>? newProducts;
    var jsonData = widget.config.jsonData;
    if (_page == 1 && jsonData is Map && jsonData['data'] != null) {
      newProducts = _service.api.productsFromJsonData(jsonData['data']);
    }
    newProducts ??=
        await _service.api.fetchProductsLayout(config: config) ?? [];
    var isExisted = newProducts.isNotEmpty &&
        _products.indexWhere((o) => o.id == newProducts?[0].id) > -1;
    if (!isExisted) {
      _products = [..._products, ...newProducts];
      if (newProducts.length < config['limit']) {
        _canLoad.value = false;
      }
    } else {
      if (newProducts.isEmpty) {
        _canLoad.value = false;
      } else {
        _isLoading = false;
        if (mounted) {
          setState(() {});
        }
        await Future.delayed(const Duration(milliseconds: 300));
        unawaited(_loadProduct());
        return;
      }
    }

    _isLoading = false;

    if (mounted) {
      setState(() {});
    }
  }

  ProductConfig get config => widget.config;

  @override
  bool get hasNext => _canLoad.value;

  @override
  Future<void> getData() => _loadProduct();

  @override
  late ScrollController scrollController;

  @override
  void didChangeDependencies() {
    scrollController = PrimaryScrollController.of(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _canLoad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Helper.isTablet(MediaQuery.of(context));

    var column = isTablet ? 3 : 2;

    //BUG: has problem when scroll the list products
    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    return BackgroundColorWidget(
      enable: config.enableBackground,
      child: LimitedBox(
        maxHeight: size.height - padding.vertical,
        child: CustomScrollView(
          controller: scrollController,
          cacheExtent: 1000,
          slivers: <Widget>[
            if (config.name?.isNotEmpty == true || config.showSeeAll)
              SliverToBoxAdapter(
                child: HeaderView(
                  headerText: widget.config.name ?? '',
                  showSeeAll:
                      widget.config.showSeeAll && !ServerConfig().isListingType,
                  callback: () => ProductModel.showList(
                    config: widget.config.jsonData,
                    context: context,
                  ),
                ),
              ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: widget.config.vPadding,
                horizontal: widget.config.hPadding,
              ),
              sliver: SliverMasonryGrid.count(
                crossAxisCount: column,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childCount: _products.length,
                itemBuilder: (context, index) {
                  final product = _products[index];
                  if (widget.config.cardDesign.isQuiltedCard) {
                    return ProductQuiltedCard(
                      item: product,
                      width: size.width * 2 / 3,
                      config: widget.config,
                    );
                  }
                  return PinterestCard(
                    item: _products[index],
                    width: size.width / 2,
                    config: widget.config,
                  );
                },
                // staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
              ),
            ),
            SliverToBoxAdapter(
              child: ValueListenableBuilder<bool>(
                valueListenable: _canLoad,
                builder: (context, value, child) {
                  if (!value) {
                    return Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Center(child: Text(S.of(context).noData)),
                    );
                  }
                  return child ?? const SizedBox();
                },
                child: Center(
                  child: Text(S.of(context).loading),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
