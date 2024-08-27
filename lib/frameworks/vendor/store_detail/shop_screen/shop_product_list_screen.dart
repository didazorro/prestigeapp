import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../common/config.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/entities/product.dart';
import '../../../../modules/dynamic_layout/config/product_config.dart';
import '../../../../widgets/product/product_card_view.dart';
import '../shop_model/export.dart';

enum ShopType { category, onSale, latest, popular }

class ShopProductListScreen extends StatefulWidget {
  final ShopType? type;
  final String? name;
  final BuildContext? ctx;
  const ShopProductListScreen({super.key, this.type, this.name, this.ctx});
  const ShopProductListScreen.category(
      {super.key, this.type = ShopType.category, this.name, required this.ctx});
  const ShopProductListScreen.onSale(
      {super.key, this.type = ShopType.onSale, this.name, required this.ctx});
  const ShopProductListScreen.latest(
      {super.key, this.type = ShopType.latest, this.name, required this.ctx});
  const ShopProductListScreen.popular(
      {super.key, this.type = ShopType.popular, this.name, required this.ctx});

  @override
  State<ShopProductListScreen> createState() => _ShopProductListScreenState();
}

class _ShopProductListScreenState extends State<ShopProductListScreen> {
  final _controller = RefreshController();
  Future<void> _onLoading(model) async {
    final list = await model.loadProducts();

    if (list.isEmpty) {
      _controller.loadNoData();
      return;
    }
    _controller.loadComplete();
  }

  Widget _buildProductItem(Product product) {
    return LayoutBuilder(builder: (_, constraint) {
      return ProductCard(
        width: constraint.maxWidth,
        item: product,
        config: ProductConfig.empty()..hideStore = true,
      );
    });
  }

  Widget _listProductWidget(ShopModel model) {
    final theme = Theme.of(context);
    final isEmpty =
        model.products.isEmpty && model.state == ShopModelState.loaded;
    var mainAxisExtent = 210.0;
    mainAxisExtent += kProductDetail.productListItemHeight;
    if (kProductDetail.showQuantityInList) {
      mainAxisExtent += 30;
    }
    if (kProductCard.showCartButton) {
      mainAxisExtent += 30;
    }
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(widget.name ?? ''),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SmartRefresher(
          controller: _controller,
          enablePullDown: false,
          enablePullUp: true,
          onLoading: () => _onLoading(model),
          child: isEmpty
              ? Center(child: Text(S.of(context).noData))
              : GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    mainAxisExtent: mainAxisExtent,
                  ),
                  itemCount: model.products.length,
                  itemBuilder: (_, index) {
                    final product = model.products[index];
                    return _buildProductItem(product);
                  },
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var model;

    switch (widget.type) {
      case ShopType.category:
        model = Provider.of<ShopCategoryModel>(widget.ctx!, listen: false);
        return ChangeNotifierProvider<ShopCategoryModel>.value(
            value: model,
            child: Consumer<ShopCategoryModel>(
                builder: (_, model, __) => _listProductWidget(model)));
      case ShopType.latest:
        model = Provider.of<ShopNewModel>(widget.ctx!, listen: false);
        return ChangeNotifierProvider<ShopNewModel>.value(
            value: model,
            child: Consumer<ShopNewModel>(
                builder: (_, model, __) => _listProductWidget(model)));
      case ShopType.onSale:
        model = Provider.of<ShopOnSaleModel>(widget.ctx!, listen: false);
        return ChangeNotifierProvider<ShopOnSaleModel>.value(
            value: model,
            child: Consumer<ShopOnSaleModel>(
                builder: (_, model, __) => _listProductWidget(model)));
      default:
        model = Provider.of<ShopPopularModel>(widget.ctx!, listen: false);
        return ChangeNotifierProvider<ShopPopularModel>.value(
            value: model,
            child: Consumer<ShopPopularModel>(
                builder: (_, model, __) => _listProductWidget(model)));
    }
  }
}
