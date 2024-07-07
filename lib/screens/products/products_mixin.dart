import 'dart:async';

import 'package:provider/provider.dart';

import '../../common/tools/flash.dart';
import '../../generated/l10n.dart';
import '../../models/product_model.dart';
import '../../services/firebase_service.dart';
import '../../services/services.dart';

mixin ProductsMixin {
  Future<void> shareProductsLink(context) async {
    unawaited(
      FlashHelper.message(
        context,
        message: S.of(context).generatingLink,
        duration: const Duration(seconds: 2),
      ),
    );
    var productModel = Provider.of<ProductModel>(context, listen: false);
    var currentCategoryId = productModel.categoryIds;
    var currentTagId = productModel.tagIds;
    var url;
    if (currentCategoryId?.length == 1) {
      url = await FirebaseServices()
          .dynamicLinks
          ?.generateProductCategoryUrl(currentCategoryId?.first);
    } else if (currentTagId?.length == 1) {
      url = await FirebaseServices()
          .dynamicLinks
          ?.generateProductTagUrl(currentTagId?.first);
    }

    if (url?.isNotEmpty ?? false) {
      Services().firebase.shareDynamicLinkProduct(itemUrl: url);
    } else {
      unawaited(
        FlashHelper.errorMessage(
          context,
          message: S.of(context).failedToGenerateLink,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}
