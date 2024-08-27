import 'package:flutter/material.dart';
import 'package:inspireui/icons/constants.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/extensions/buildcontext_ext.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart' show BackDropArguments, Product;
import '../../models/search_web_model.dart';
import '../../modules/dynamic_layout/config/product_config.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../routes/flux_navigate.dart';
import '../../services/index.dart';
import '../common/no_internet_connection.dart';
import '../web_layout/web_layout.dart';
import '../web_layout/widgets/path_header_widget.dart';

class ProductListWeb extends StatefulWidget {
  final List<Product>? products;
  final bool isFetching;
  final bool? isEnd;
  final bool productType;
  final String? errMsg;
  final double? width;
  final double padding;
  final String? layout;
  final String? title;
  final Future Function() onRefresh;
  final Future Function() onLoadMore;
  final double? ratioProductImage;
  final double productListItemHeight;
  final List<Widget>? header;
  final Widget? appbar;
  final ScrollController? scrollController;

  const ProductListWeb({
    this.isFetching = false,
    this.isEnd = true,
    this.errMsg,
    this.products,
    this.width,
    this.padding = 8.0,
    required this.onRefresh,
    required this.onLoadMore,
    this.layout = 'list',
    this.ratioProductImage,
    this.productListItemHeight = 125.0,
    this.header,
    this.appbar,
    this.scrollController,
    this.productType = false,
    this.title,
  });

  @override
  State<ProductListWeb> createState() => _ProductListWebState();
}

class _ProductListWebState extends State<ProductListWeb> {
  late RefreshController _refreshController;

  late bool _isEnd = widget.isEnd ?? true;

  List<Product> emptyList = [
    Product.empty('1'),
    Product.empty('2'),
    Product.empty('3'),
    Product.empty('4'),
    Product.empty('5'),
    Product.empty('6')
  ];

  @override
  void initState() {
    super.initState();

    /// if there are existing product from previous navigate we don't need to enable the refresh
    _refreshController = RefreshController(initialRefresh: false);
  }

  void _onRefresh() async {
    if (!widget.isFetching) {
      await widget.onRefresh();
    }

    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    if (!widget.isFetching && !_isEnd) {
      await widget.onLoadMore();
    }

    _refreshController.loadComplete();
  }

  @override
  void didUpdateWidget(ProductListWeb oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isEnd != oldWidget.isEnd) {
      _isEnd = widget.isEnd ?? false;
    }

    if (widget.isFetching == false && oldWidget.isFetching == true) {
      _refreshController.refreshCompleted();
      _refreshController.loadComplete();
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final configProductList = context.mathSizeLayoutProductList(
      layout: widget.layout,
      width: widget.width,
    );
    var crossAxisCount = configProductList.$1;
    var widthContent = configProductList.$2;

    final hasNoProduct = widget.products == null || widget.products!.isEmpty;

    final productsList =
        hasNoProduct && widget.isFetching ? emptyList : widget.products;

    if (hasNoProduct &&
        widget.errMsg != null &&
        widget.errMsg!.isNoInternetError) {
      return NoInternetConnection(onRefresh: _onRefresh);
    }

    Widget typeList = const SizedBox();

    if (productsList == null || productsList.isEmpty) {
      typeList = SliverFillRemaining(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).noProduct,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      );
    } else {
      typeList = _buildGridViewProductWeb(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.80,
        products: productsList,
        widthContent: widthContent,
      );
    }

    return LayoutBuilder(builder: (_, constraints) {
      final paddingHorizontal = constraints.maxWidth > kLimitWidthScreen
          ? ((constraints.maxWidth - kLimitWidthScreen) / 2)
          : 0.0;
      final isEnableSearch =
          context.read<SearchWebModel>().searchText?.isNotEmpty ?? false;
      return SmartRefresher(
        header: MaterialClassicHeader(
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        enablePullDown: true,
        enablePullUp: !_isEnd,
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        footer: kCustomFooter(context),
        child: SliverWebLayout(
          searchText: context.read<SearchWebModel>().searchText,
          pathHeaders: [
            PathHeaderItem(
                title: S.of(context).allProducts,
                onTap: () {
                  FluxNavigate.pushNamed(
                    RouteList.backdrop,
                    arguments: BackDropArguments(),
                    context: context,
                  );
                }),
            if (isEnableSearch)
              PathHeaderItem(title: S.of(context).search)
            else if (widget.title?.isNotEmpty ?? false)
              PathHeaderItem(title: widget.title ?? ''),
          ],
          slivers: <Widget>[
            SliverList.builder(
              itemBuilder: (context, index) =>
                  LayoutLimitWidthScreen(child: widget.header![index]),
              itemCount: widget.header?.length,
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              sliver: typeList,
            ),
            if (!widget.isFetching && _isEnd == false)
              SliverToBoxAdapter(
                child: Center(
                  child: SizedBox(
                    width: 100,
                    child: OutlinedButton(
                      onPressed: _onLoading,
                      child: Text(S.of(context).viewMore),
                    ),
                  ),
                ),
              )
            else if (widget.isFetching)
              SliverToBoxAdapter(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 30,
                    child: kLoadingWidget(context),
                  ),
                ),
              ),
          ],
        ),
      );
    });
  }

  Widget _buildGridViewProductWeb({
    required int crossAxisCount,
    required double childAspectRatio,
    double? widthContent,
    required List<Product> products,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 24.0,
        ),
        delegate: SliverChildBuilderDelegate(
          addAutomaticKeepAlives: false,
          childCount: products.length,
          (BuildContext context, int i) {
            return Services().widget.renderProductCardView(
                  item: products[i],
                  width: widthContent,
                  ratioProductImage: 1.0,
                  useDesktopStyle: true,
                  config: ProductConfig.empty()
                    ..cardDesign = CardDesign.simpleForWeb
                    ..imageRatio = 1.1
                    ..showHeart = true
                    ..useCircularRadius = false
                    ..borderRadius = 16,
                );
          },
        ),
      ),
    );
  }
}
