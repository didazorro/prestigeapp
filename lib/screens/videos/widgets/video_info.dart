import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/product.dart';
import '../../../models/entities/store_arguments.dart';
import '../../../widgets/common/flux_image.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({super.key, this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    final labelMediumStyle = Theme.of(context).textTheme.labelMedium ??
        DefaultTextStyle.of(context).style;
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 10,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product?.store != null)
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteList.storeDetail,
                  arguments: StoreDetailArgument(store: product!.store!),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    if (product?.store?.image?.isNotEmpty ?? false)
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: FluxImage(
                            fit: BoxFit.cover,
                            imageUrl: product!.store!.image!,
                          ),
                        ),
                      ),
                    if (product?.store?.name?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          product!.store!.name!,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          Text(
            product?.mVideoTitle ?? product?.name ?? '',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ReadMoreText(
            product?.mVideoDesc ?? '',
            style: const TextStyle(
              color: Colors.white,
            ),
            trimLines: 3,
            colorClickableText: Colors.white,
            trimMode: TrimMode.Line,
            trimCollapsedText: S.of(context).showMore,
            trimExpandedText: ' ${S.of(context).showLess}',
            lessStyle: labelMediumStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
            moreStyle: labelMediumStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
