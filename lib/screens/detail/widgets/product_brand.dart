import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/brand.dart';
import '../../../models/index.dart'
    show BackDropArguments, BrandLayoutModel, Product;
import '../../../routes/flux_navigate.dart';
import '../../../widgets/common/index.dart' show ExpansionInfo, FluxImage;

class ProductBrand extends StatelessWidget {
  const ProductBrand({super.key, this.product});

  final Product? product;

  List<Brand> get productBrands => product?.brands ?? [];

  @override
  Widget build(BuildContext context) {
    if (!kProductDetail.showBrand || productBrands.isEmpty) {
      return const SizedBox();
    }

    return ExpansionInfo(
      expand: kProductDetail.expandBrands,
      title: S.of(context).brand,
      children: <Widget>[
        const SizedBox(height: 10),
        Selector<BrandLayoutModel, List<Brand>?>(
          selector: (BuildContext context, BrandLayoutModel brandLayoutModel) =>
              brandLayoutModel.brands,
          builder: (BuildContext context, List<Brand>? listBrands, _) {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const Divider(height: 12),
              padding: const EdgeInsets.all(8.0),
              itemBuilder: (BuildContext context, int index) {
                final brand = listBrands?.firstWhereOrNull(
                      (item) => item.id == productBrands[index].id,
                    ) ??
                    productBrands[index];

                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => FluxNavigate.pushNamed(
                    RouteList.backdrop,
                    arguments: BackDropArguments(
                      brandId: brand.id,
                      brandName: brand.name,
                      brandImg: brand.image,
                    ),
                    context: context,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (brand.image?.isNotEmpty ?? true)
                        FluxImage(
                          imageUrl: brand.image ?? '',
                          fit: BoxFit.cover,
                          height: 56.0,
                        ),
                      Text(brand.name ?? ''),
                    ],
                  ),
                );
              },
              itemCount: productBrands.length,
            );
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
