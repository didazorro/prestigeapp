import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/tools/price_tools.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/cart/cart_base.dart';
import 'package:fstore/models/entities/b2bking/tired_price.dart';
import 'package:fstore/models/entities/product.dart';
import 'package:fstore/models/product_variant_model.dart';
import 'package:fstore/models/user_model.dart';
import 'package:provider/provider.dart';

import '../services/b2bking_service_mixin.dart';
import '../services/index.dart';

class TiredPriceTable extends StatefulWidget {
  const TiredPriceTable({super.key, required this.product});
  final Product product;

  @override
  State<TiredPriceTable> createState() => _TiredPriceTableState();
}

class _TiredPriceTableState extends State<TiredPriceTable>
    with B2BKingServiceMixin {
  final _services = B2BKingServices();

  List<B2BKingTiredPrice>? _tiredPrices;

  @override
  void initState() {
    super.initState();
    if (kAdvanceConfig.b2bKingConfig.enabled == true) {
      Future.delayed(Duration.zero, () async {
        try {
          final user = Provider.of<UserModel>(context, listen: false).user;
          _tiredPrices = await _services.getTiredPrices(widget.product,
              token: user?.cookie);
          final productVariantModel =
              Provider.of<ProductVariantModel>(context, listen: false);
          productVariantModel.updateValues(tiredPrices: _tiredPrices);
          setState(() {});
        } catch (_) {}
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final disabled = hideProductPrice(context, null);
    if ((_tiredPrices?.isEmpty ?? true) || disabled) return const SizedBox();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Text(
                    S.of(context).quantity.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    S.of(context).discount.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    S.of(context).price.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.right,
                  )),
            ],
          ),
        ),
        const Divider(),
        ...?_tiredPrices?.map((e) => _renderItem(e))
      ],
    );
  }

  Widget _renderItem(B2BKingTiredPrice item) {
    final cartModel = Provider.of<CartModel>(context, listen: false);
    final productVariantModel = Provider.of<ProductVariantModel>(context);
    return GestureDetector(
      onTap: () {
        productVariantModel.updateValues(selectedTiredPrice: item);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        color: productVariantModel.selectedTiredPrice?.quantity == item.quantity
            ? Theme.of(context).primaryColorLight
            : Colors.transparent,
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  item.quantity?.toString() ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
            Expanded(
                flex: 1,
                child: Text(
                  '${item.discount?.toString() ?? ''} %',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                )),
            Expanded(
                flex: 1,
                child: Text(
                  PriceTools.getCurrencyFormatted(
                          item.price, cartModel.currencyRates,
                          currency: cartModel.currencyCode) ??
                      '',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.right,
                )),
          ],
        ),
      ),
    );
  }
}
