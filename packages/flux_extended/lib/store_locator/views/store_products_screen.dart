import 'package:flutter/material.dart';
import 'package:fstore/screens/common/app_bar_mixin.dart';
import 'package:fstore/widgets/product/product_list.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../models/store.dart';

class StoreProductsScreen extends StatefulWidget {
  const StoreProductsScreen({super.key, required this.store});
  final Store store;
  @override
  State<StoreProductsScreen> createState() => _StoreProductsScreenState();
}

class _StoreProductsScreenState extends State<StoreProductsScreen>
    with AppBarMixin {
  @override
  Widget build(BuildContext context) {
    return renderScaffold(
        routeName: 'products',
        secondAppBar: AppBar(
          title: Text(
            widget.store.name ?? '',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          leading: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: ChangeNotifierProvider<ProductModel>(
          create: (_) => ProductModel()..refreshProducts(widget.store.id ?? ''),
          child: Consumer<ProductModel>(builder: (context, model, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ProductList(
                products: model.productsList,
                onRefresh: () async {
                  await model.refreshProducts(widget.store.id ?? '');
                },
                onLoadMore: () async {
                  model.loadProducts();
                },
                isFetching: model.isFetching,
                errMsg: model.errMsg,
                isEnd: model.isEnd,
              ),
            );
          }),
        ));
  }
}
