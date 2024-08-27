import 'dart:async';

import 'package:provider/provider.dart';

import '../../common/tools/flash.dart';
import '../../generated/l10n.dart';
import '../../models/product_model.dart';
import '../../services/index.dart';

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
      url = await Services()
          .linkService
          .generateProductCategoryUrl(currentCategoryId?.first);
    } else if (currentTagId?.length == 1) {
      url = await Services()
          .linkService
          .generateProductTagUrl(currentTagId?.first);
    }

    if (url != null && url.isNotEmpty) {
      unawaited(
          Services().dynamicLinkService.createDynamicLink(productUrl: url));
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
