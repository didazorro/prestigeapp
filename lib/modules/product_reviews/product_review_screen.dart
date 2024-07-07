import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../common/config.dart';
import '../../generated/l10n.dart';
import '../../models/entities/product.dart';
import '../../models/entities/review.dart';
import '../../widgets/common/paging_list.dart';
import '../../widgets/product/product_simple_view.dart';
import '../dynamic_layout/helper/helper.dart';
import 'models/product_reviews_model.dart';
import 'views/widgets/product_rating_count.dart';
import 'views/widgets/review_item.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Layout.isDisplayDesktop(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: isDesktop
          ? null
          : AppBar(
              title: Text(
                S.of(context).productReview,
                style: const TextStyle(color: Colors.white),
              ),
            ),
      body: PagingList<ProductReviewsModel, Review>(
        allowPullToRefresh: false,
        header: Column(
          children: [
            ProductSimpleView(
              item: product,
              isFromSearchScreen: true,
            ),
            ProductRatingCount(product: product),
            const Divider(),
          ],
        ),
        separatorBuilder: (_, __) => const Divider(),
        loadingWidget: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ReviewItemSkeleton(),
        ),
        lengthLoadingWidget: 1,
        itemBuilder: (_, review, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ReviewItem(
              name: review.displayName,
              date: timeago.format(review.createdAt),
              rating: review.rating ?? 0,
              content: review.displayContent,
              images: review.images,
              showRatingStar: kAdvanceConfig.enableRating,
              verified: review.verified,
              showAllImages: true,
            ),
          );
        },
      ),
    );
  }
}
