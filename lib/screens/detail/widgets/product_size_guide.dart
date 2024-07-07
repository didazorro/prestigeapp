import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/index.dart' show Product;
import '../../../services/services.dart';
import '../../../widgets/common/expansion_info.dart';

class ProductSizeGuide extends StatefulWidget {
  final Product? product;

  const ProductSizeGuide(this.product);

  @override
  State<ProductSizeGuide> createState() => _ProductSizeGuideState();
}

class _ProductSizeGuideState extends State<ProductSizeGuide> {
  final _memoizer = AsyncMemoizer<String?>();

  Services get services => Services();
  Product? get product => widget.product;

  Future<String?> getSizeGuideHtml() => _memoizer.runOnce(() {
        return services.api.getSizeGuide(
          product!.id,
        );
      });

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return const SizedBox();
    }

    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      child: FutureBuilder<String?>(
        future: getSizeGuideHtml(),
        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
          if (snapshot.data?.isNotEmpty ?? false) {
            final html = snapshot.data!;
            return ExpansionInfo(
              expand: kProductDetail.expandSizeGuide,
              title: S.of(context).sizeGuide,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child:
                      Services().widget.renderProductDescription(context, html),
                ),
                const SizedBox(height: 20),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
