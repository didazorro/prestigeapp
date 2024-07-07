import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../models/entities/product.dart';
import '../../models/index.dart';
import 'models/product_rating_count_model.dart';
import 'models/product_reviews_model.dart';
import 'product_reviews_list.dart';

class ProductReviewsIndex extends StatelessWidget {
  final Product product;
  final bool isStyleExpansion;
  final bool isShowEmpty;
  final Widget Function(int)? builderTitle;

  const ProductReviewsIndex({
    super.key,
    required this.product,
    this.isStyleExpansion = true,
    this.isShowEmpty = false,
    this.builderTitle,
  });

  @override
  Widget build(BuildContext context) {
    if (!kProductDetail.enableReview) {
      return const SizedBox();
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductReviewsModel>(
          create: (context) => ProductReviewsModel(product),
        ),
        ChangeNotifierProvider<ProductRatingCountModel>(
          create: (context) => ProductRatingCountModel(product.id),
        ),
      ],
      child: ProductReviewsList(
        isStyleExpansion: isStyleExpansion,
        isShowEmpty: isShowEmpty,
        builderTitle: builderTitle,
        onTapSeeAllReviews: () {
          Navigator.of(context).pushNamed(
            RouteList.productReviews,
            arguments: product,
          );
        },
      ),
    );
  }
}
