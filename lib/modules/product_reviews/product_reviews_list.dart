import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../common/config.dart';
import '../../generated/l10n.dart';
import '../../widgets/common/expansion_info.dart';
import 'models/product_rating_count_model.dart';
import 'models/product_reviews_model.dart';
import 'views/widgets/rating_count_widget.dart';
import 'views/widgets/review_item.dart';

class ProductReviewsList extends StatelessWidget {
  const ProductReviewsList({
    super.key,
    this.onTapSeeAllReviews,
    this.isStyleExpansion = true,
    this.isShowEmpty = false,
    this.builderTitle,
  });

  final VoidCallback? onTapSeeAllReviews;
  final bool isStyleExpansion;
  final bool isShowEmpty;
  final Widget Function(int)? builderTitle;

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductReviewsModel>(
      builder: (context, model, child) {
        if (model.isFirstLoad) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: kLoadingWidget(context),
          );
        }

        final reviews = model.data.take(5);

        if (reviews.isEmpty) {
          if (isShowEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  S.of(context).noReviews,
                ),
              ),
            );
          }

          return const SizedBox();
        }

        final body = [
          const SizedBox(height: 16),
          Consumer<ProductRatingCountModel>(
            builder: (context, reviewCountModel, child) {
              if (reviewCountModel.isLoading) {
                return const RatingCountSkeleton();
              }

              final rating = reviewCountModel.value;
              return RatingCountWidget(
                averageRating: model.averageRating,
                ratingCount: model.ratingCount,
                rating1: rating.oneStar,
                rating2: rating.twoStar,
                rating3: rating.threeStar,
                rating4: rating.fourStar,
                rating5: rating.fiveStar,
              );
            },
          ),
          const SizedBox(height: 8),
          const Divider(),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0.0),
            itemCount: reviews.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final review = model.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReviewItem(
                  name: review.displayName,
                  date: timeago.format(review.createdAt),
                  rating: review.rating ?? 0,
                  content: review.displayContent,
                  images: review.images,
                  showRatingStar: kAdvanceConfig.enableRating,
                  verified: review.verified,
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OutlinedButton(
                onPressed: onTapSeeAllReviews,
                child: Text(S.of(context).seeAll),
              ),
            ),
          )
        ];
        if (isStyleExpansion) {
          return ExpansionInfo(
            expand: kProductDetail.expandReviews,
            title: S.of(context).reviews,
            children: body,
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: body,
        );
      },
    );
  }
}
