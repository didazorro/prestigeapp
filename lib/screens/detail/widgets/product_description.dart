import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show Product;
import '../../../services/index.dart';
import '../../../widgets/common/index.dart';
import 'additional_information.dart';

class ProductDescription extends StatelessWidget {
  final Product? product;

  const ProductDescription(this.product);

  String get description => product?.description ?? '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (description.isNotEmpty)
          ExpansionInfo(
            title: S.of(context).description,
            expand: kProductDetail.expandDescription,
            children: <Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Services()
                    .widget
                    .renderProductDescription(context, description),
              ),
              const SizedBox(height: 20),
            ],
          ),
        if (product!.infors.isNotEmpty)
          ExpansionInfo(
            expand: kProductDetail.expandInfors,
            title: S.of(context).additionalInformation,
            children: <Widget>[
              AdditionalInformation(
                listInfo: product!.infors,
              ),
            ],
          ),
      ],
    );
  }
}
