import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../models/cart/cart_base.dart';
import '../../models/entities/product.dart';
import '../../services/base_services.dart';
import '../../services/wallet/tera_wallet_service_locator.dart';
import '../../widgets/common/expansion_info.dart';
import 'common/helper.dart';
import 'dokan.dart';
import 'services/dokan_service.dart';
import 'store_detail/shop_model/shop_category_model.dart';

mixin VendorListingMixin {
  Widget renderVendorOrderForDokan(
          BuildContext context, SettingItemStyle? cardStyle) =>
      DokanWidget().renderVendorOrder(context, cardStyle);

  void loadShippingMethods(
    BuildContext context,
    CartModel cartModel,
    bool beforehand,
  ) {
    DokanWidget().loadShippingMethods(context, cartModel, beforehand);
  }

  Widget renderShippingMethods(
    BuildContext context, {
    Function? onBack,
    Function? onNext,
  }) {
    return DokanWidget()
        .renderShippingMethods(context, onBack: onBack, onNext: onNext);
  }

  Product updateProductObject(Product product, Map? json) =>
      DokanWidget().updateProductObject(product, json);

  BaseServices? buildDokanService({
    required String domain,
    String? blogDomain,
    String? consumerSecret,
    String? consumerKey,
  }) {
    TeraWalletServiceLocator.setup(domain);
    return DokanService(
      domain: domain,
      blogDomain: blogDomain,
      consumerSecret: consumerSecret ?? '',
      consumerKey: consumerKey ?? '',
    );
  }

  Widget renderProductDetailCategories(BuildContext context, Product? product) {
    var appModel = Provider.of<AppModel>(context, listen: false);
    return Provider(
      create: (_) =>
          ShopCategoryModel(product!.store!.id!, lang: appModel.langCode),
      builder: (BuildContext context, Widget? child) {
        return ExpansionInfo(
          expand: kProductDetail.expandCategories,
          title: S.of(context).categories,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 10),
              child: Wrap(
                children: List.generate(
                  product!.distinctCategories.length,
                  (index) {
                    final category = product.categories[index];
                    return TextButton(
                      onPressed: () {
                        Helper.navigateToShopList(context, category);
                      },
                      child: Text(
                        ' ${category.name?.toUpperCase()}  ',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
