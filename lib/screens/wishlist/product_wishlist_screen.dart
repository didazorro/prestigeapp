import 'package:flutter/material.dart';
import 'package:inspireui/icons/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/constants.dart';
import '../../common/extensions/buildcontext_ext.dart';
import '../../common/tools.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart' show CartModel, ProductWishListModel;
import '../../modules/dynamic_layout/config/product_config.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/services.dart';
import '../../widgets/web_layout/web_layout.dart';
import '../../widgets/web_layout/widgets/path_header_widget.dart';
import '../common/app_bar_mixin.dart';
import 'empty_wishlist.dart';
import 'empty_wishlist_web.dart';
import 'wishlist_item_widget.dart';

class ProductWishListScreen extends StatefulWidget {
  const ProductWishListScreen();

  @override
  State<StatefulWidget> createState() => _WishListState();
}

class _WishListState extends State<ProductWishListScreen> with AppBarMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    screenScrollController = _scrollController;
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Layout.isDisplayDesktop(context);

    return renderScaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      routeName: RouteList.wishlist,
      secondAppBar: isDesktop
          ? null
          : AppBar(
              iconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.secondary,
              ),
              elevation: 0.5,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text(
                S.of(context).myWishList,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
      child: ListenableProvider.value(
        value: Provider.of<ProductWishListModel>(context, listen: false),
        child: Consumer<ProductWishListModel>(
          builder: (context, model, child) {
            if (isDesktop) {
              final configProductList = context.mathSizeLayoutProductList();
              var crossAxisCount = configProductList.$1;
              var widthContent = configProductList.$2 + 16;

              return LayoutBuilder(builder: (_, constraints) {
                final paddingHorizontal =
                    constraints.maxWidth > kLimitWidthScreen
                        ? ((constraints.maxWidth - kLimitWidthScreen) / 2)
                        : 0.0;

                return SliverWebLayout(
                  slivers: [
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              S.of(context).myWishList,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (model.products.isEmpty)
                      SliverFillRemaining(
                        child: EmptyWishlistWeb(
                          onShowHome: () =>
                              NavigateTools.navigateToDefaultTab(context),
                        ),
                      )
                    else
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: paddingHorizontal,
                          vertical: 16.0,
                        ),
                        sliver: SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 24.0,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            addAutomaticKeepAlives: false,
                            childCount: model.products.length,
                            (BuildContext context, int i) {
                              return Services().widget.renderProductCardView(
                                    item: model.products[i],
                                    width: widthContent,
                                    ratioProductImage: 1.0,
                                    useDesktopStyle: isDesktop,
                                    config: ProductConfig.empty()
                                      ..cardDesign = isDesktop
                                          ? CardDesign.simpleForWeb
                                          : CardDesign.card
                                      ..imageRatio = 1.0
                                      ..showHeart = true
                                      ..useCircularRadius = false
                                      ..borderRadius = 16,
                                  );
                            },
                          ),
                        ),
                      ),
                  ],
                  pathHeaders: [
                    PathHeaderItem(title: S.of(context).myWishList),
                  ],
                );
              });
            } else {
              if (model.products.isEmpty) {
                return EmptyWishlist(
                  onShowHome: () => NavigateTools.navigateToDefaultTab(context),
                  onSearchForItem: () => NavigateTools.navigateToRootTab(
                    context,
                    RouteList.search,
                  ),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      child: Text(
                        '${model.products.length} ${S.of(context).items}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: kGrey400,
                        ),
                      ),
                    ),
                    const Divider(height: 1, color: kGrey200),
                    const SizedBox(height: 15),
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return WishlistItem(
                            product: model.products[index],
                            onRemove: () {
                              Provider.of<ProductWishListModel>(context,
                                      listen: false)
                                  .removeToWishlist(model.products[index]);
                            },
                            onAddToCart: () {
                              if (model.products[index].isPurchased &&
                                  model.products[index].isDownloadable!) {
                                Tools.launchURL(
                                    model.products[index].files![0]!,
                                    mode: LaunchMode.externalApplication);
                                return;
                              }
                              var msg =
                                  Provider.of<CartModel>(context, listen: false)
                                      .addProductToCart(
                                context: context,
                                product: model.products[index],
                                quantity: 1,
                              );
                              if (msg.isEmpty) {
                                final name = model.products[index].name;
                                msg = name != null
                                    ? S.of(context).productAddToCart(name)
                                    : S.of(context).addToCartSucessfully;
                              }
                              Tools.showSnackBar(
                                  ScaffoldMessenger.of(context), msg);
                            },
                          );
                        },
                      ),
                    )
                  ],
                );
              }
            }
          },
        ),
      ),
    );
  }
}
