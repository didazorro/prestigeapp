import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../common/extensions/extensions.dart';
import '../../../generated/l10n.dart';
import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../widgets/product/action_button_mixin.dart';
import '../../../widgets/product/dialog_add_to_cart.dart';
import '../models/video.dart';

const double kIconSize = 30.0;

class VideoButtons extends StatelessWidget with ActionButtonMixin {
  const VideoButtons({
    super.key,
    required this.video,
    this.config,
  });

  final Video video;
  final ProductConfig? config;

  @override
  Widget build(BuildContext context) {
    var inStock = video.product?.inStock ?? false;
    var allowBackorder = video.product?.backordersAllowed ?? false;
    final isExternal = video.product?.type == 'external';
    var enableBuyNow = inStock || allowBackorder || isExternal;
    var enableBottomSheet = config?.enableBottomAddToCart ?? true
        ? true
        : !video.product!.canBeAddedToCartFromList();

    return Container(
      padding: const EdgeInsets.only(right: 2, bottom: 10, left: 20, top: 10),
      child: Column(
        children: [
          if (enableBuyNow) ...[
            VideoButton(
                icon: const Icon(
                  CupertinoIcons.cart_fill_badge_plus,
                  size: kIconSize,
                  color: Colors.white,
                ),
                label: S.of(context).buyNow,
                onTap: () => _buyNow(context, enableBottomSheet)),
            const SizedBox(height: 15),
          ],
          if (dynamicLinkConfig.enable) ...[
            VideoButton(
              icon: const Icon(
                Icons.share_sharp,
                size: kIconSize,
                color: Colors.white,
              ),
              label: S.of(context).share,
              onTap: () => _share(context),
            ),
            const SizedBox(height: 15),
          ],
          VideoButton(
            icon: const Icon(
              CupertinoIcons.info,
              size: kIconSize - 2,
              color: Colors.white,
            ),
            label: S.of(context).showDetails,
            onTap: () => _showDetail(context),
          ),
        ],
      ),
    );
  }

  void _showDetail(BuildContext context) {
    var product = video.product;
    if (product != null) {
      onTapProduct(context, product: product);
    }
  }

  void _share(BuildContext context) {
    var url = video.product?.permalink;
    context.shareLink(url);
  }

  void _buyNow(BuildContext context, enableBottomSheet) {
    if (enableBottomSheet) {
      DialogAddToCart.show(context, product: video.product!, quantity: 1);
    } else {
      onTapProduct(
        context,
        product: video.product!,
      );
    }
  }
}

class VideoButton extends StatelessWidget {
  const VideoButton({super.key, required this.icon, this.label, this.onTap});

  final Widget icon;
  final String? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 5,
          bottom: 5,
        ),
        child: Column(
          children: [
            icon,
            if (label != null) const SizedBox(height: 3),
            if (label != null)
              Text(
                label ?? '',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white),
              )
          ],
        ),
      ),
    );
  }
}
