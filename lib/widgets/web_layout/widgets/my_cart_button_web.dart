import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../../../common/constants.dart';
import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/product.dart';
import '../../../screens/cart/helpers/cart_items_helper.dart';
import '../../../screens/cart/mixins/my_cart_mixin.dart';
import '../../common/flux_image.dart';
import '../../product/cart_item/cart_item_state_ui.dart';
import '../mixins/overlay_mixin.dart';
import '../web_layout_constant.dart';

class MyCartButtonWebWidget extends StatefulWidget {
  const MyCartButtonWebWidget({super.key, this.width = 350.0});

  final double? width;

  @override
  State<MyCartButtonWebWidget> createState() => _MyCartButtonWebWidgetState();
}

class _MyCartButtonWebWidgetState extends State<MyCartButtonWebWidget>
    with OverlayMixin, MyCartMixin {
  void _openMyCart() {
    hideOverlay();
    Navigator.of(context).pushNamed(RouteList.cart);
  }

  final _globalKey = GlobalKey<_MyCartButtonWebWidgetState>();

  @override
  double? get widthDialog => null;
  @override
  double? get heightDialog => null;
  @override
  bool? get isModal => false;

  @override
  GlobalKey<State<StatefulWidget>>? get globalKeyOverlay => _globalKey;

  @override
  Widget get bodyOverlay {
    final currencyRate = Provider.of<AppModel>(context).currencyRate;

    return Container(
      width: widget.width,
      height: 400,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.4)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 10,
              offset: const Offset(0, 5),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "${S.of(context).myCart}${cartModel.totalCartQuantity > 0 ? " (${cartModel.totalCartQuantity})" : ""}",
                  ),
                ),
              ),
              GestureDetector(
                onTap: hideOverlay,
                behavior: HitTestBehavior.opaque,
                child: const Padding(
                  padding: EdgeInsets.all(0),
                  child: Icon(
                    Icons.close,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          if (cartModel.totalCartQuantity > 0)
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: createShoppingCartRows(
                  cartModel,
                  context,
                  true,
                  cartStyle: CartStyle.short,
                )
                    .expand((element) => [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: element,
                          ),
                          const Divider(height: 1)
                        ])
                    .toList()
                  ..removeLast(),
              ),
            ))
          else
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FluxImage(
                      imageUrl: 'assets/images/empty_cart.svg',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      S.of(context).emptyCart,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      S.of(context).emptyCartSubtitle02,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(child: Text(S.of(context).subtotal)),
              Text(PriceTools.getCurrencyFormatted(
                cartModel.getSubTotal(),
                currencyRate,
                currency: cartModel.currencyCode,
              )!),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _openMyCart,
                  child: Text(S.of(context).viewCart),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Selector<CartModel, (bool, Map<String?, Product?>)>(
                  selector: (_, cartModel) =>
                      (cartModel.calculatingDiscount, cartModel.item),
                  builder: (context, value, child) {
                    var calculatingDiscount = value.$1;

                    var isReadyForCheckout = !calculatingDiscount &&
                        (cartModel.totalCartQuantity > 0);

                    return ElevatedButton(
                      onPressed: isReadyForCheckout
                          ? () {
                              hideOverlay();
                              onCheckout(cartModel);
                            }
                          : null,
                      child: Text(
                        S.of(context).checkout,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Selector<CartModel, int>(
      selector: (_, cartModel) => cartModel.totalCartQuantity,
      builder: (ct, totalCart, child) {
        return InkWell(
          key: _globalKey,
          onTap: () {
            showOverlay(App.fluxStoreNavigatorKey.currentContext!);
          },
          child: Stack(
            children: [
              Container(
                height: WebLayoutConstant.kHeightButtonAction,
                width: WebLayoutConstant.kHeightButtonAction,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(
                      WebLayoutConstant.kHeightButtonAction),
                ),
                padding: const EdgeInsets.all(3),
                child: const Icon(
                  CupertinoIcons.cart,
                  size: 13,
                ),
              ),
              if (totalCart != 0)
                Positioned.fill(
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(2),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          totalCart.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
