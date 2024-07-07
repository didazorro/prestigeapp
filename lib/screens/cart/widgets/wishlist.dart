import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/product_wish_list_model.dart';
import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../modules/dynamic_layout/helper/header_view.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/product/product_card_view.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productWishListModel = Provider.of<ProductWishListModel>(context);
    final useDesktopStyle = Layout.isDisplayDesktop(context);

    return ListenableProvider.value(
      value: productWishListModel,
      child: Consumer<ProductWishListModel>(
        builder: (context, value, child) {
          if (value.products.isNotEmpty) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeaderView(
                        headerText: S.of(context).myWishList,
                        showSeeAll: true,
                        callback: () {
                          Navigator.pushNamed(context, RouteList.wishlist);
                        }),
                    SizedBox(
                        height: useDesktopStyle
                            ? null
                            : MediaQuery.of(context).size.width * 0.8,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (var item in value.products)
                                  ProductCard(
                                    item: item,
                                    width: constraints.maxWidth * 0.35,
                                    config: ProductConfig.empty()
                                      ..showCartIcon = true
                                      ..cardDesign = useDesktopStyle
                                          ? CardDesign.simpleForWeb
                                          : CardDesign.card
                                      ..enableBottomAddToCart = true,
                                  )
                              ],
                            ),
                          ),
                        ))
                  ],
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
