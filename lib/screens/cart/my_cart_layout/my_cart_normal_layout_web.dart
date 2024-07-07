import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/config/models/cart_config.dart';
import '../../../common/config/models/index.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../menu/maintab_delegate.dart';
import '../../../models/cart/cart_base.dart';
import '../../../models/entities/product.dart';
import '../../../models/payment_method_model.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../modules/native_payment/razorpay/services.dart';
import '../../../widgets/product/cart_item/cart_item_state_ui.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../../widgets/web_layout/widgets/path_header_widget.dart';
import '../../checkout/mixins/checkout_mixin.dart';
import '../mixins/my_cart_mixin.dart';
import '../widgets/empty_cart.dart';
import '../widgets/list_cart_items.dart';
import '../widgets/shopping_cart_sumary.dart';
import '../widgets/wishlist.dart';

class MyCartNormalLayoutWeb extends StatefulWidget {
  const MyCartNormalLayoutWeb({
    super.key,
    this.isModal,
    required this.hasNewAppBar,
    this.scrollController,
    this.isBuyNow,
    this.enabledTextBoxQuantity = true,
    this.onNext,
  });

  final bool? isBuyNow;
  final bool? isModal;
  final bool hasNewAppBar;
  final bool enabledTextBoxQuantity;
  final ScrollController? scrollController;
  final void Function()? onNext;

  @override
  State<MyCartNormalLayoutWeb> createState() => _MyCartNormalLayoutWebState();
}

class _MyCartNormalLayoutWebState extends State<MyCartNormalLayoutWeb>
    with MyCartMixin {
  String _countItemText(int totalCartQuantity) {
    if (totalCartQuantity == 1) {
      return ' (${S.of(context).countItem(totalCartQuantity)})';
    }
    return ' (${S.of(context).nItems(totalCartQuantity)})';
  }

  @override
  bool? get isModal => widget.isModal;

  @override
  Widget build(BuildContext context) {
    printLog('[Cart] build');

    final localTheme = Theme.of(context);
    final backgroundColor = localTheme.colorScheme.surface;

    return Selector<CartModel, String?>(
      selector: (_, carModel) => cartModel.productsInCart.keys
          .firstOrNull, //add this Selector to reload cart screen when add product item to cart if the current cart has wallet item
      builder: (context, _, child) {
        return MediaQuery.removePadding(
          context: context,
          removeTop: widget.hasNewAppBar && widget.isModal != true,
          child: Scaffold(
            backgroundColor: backgroundColor,
            floatingActionButtonLocation:
                kAdvanceConfig.floatingCartCheckoutButtonLocation,
            body: Selector<CartModel, int>(
              selector: (_, cartModel) => cartModel.totalCartQuantity,
              builder: (context, totalCartQuantity, child) {
                return SliverWebLayout(
                  scrollController: widget.scrollController,
                  pathHeaders: [PathHeaderItem(title: S.of(context).myCart)],
                  slivers: [
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 16),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                S.of(context).myCart,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                              if (totalCartQuantity > 0)
                                Text(
                                  _countItemText(totalCartQuantity),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontSize: 22,
                                        color: kGrey400,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (totalCartQuantity == 0)
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          width: 500,
                          height: 500,
                          child: Center(
                            child: EmptyCart(isDesktop: true),
                          ),
                        ),
                      )
                    else
                      SliverToBoxAdapter(
                        child: LayoutLimitWidthScreen(
                          backgroundColor: backgroundColor,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 7,
                                child: ListCartBodyWidget(
                                  enabledTextBoxQuantity:
                                      widget.enabledTextBoxQuantity,
                                  cartStyle: CartStyle.web,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Expanded(
                                flex: 3,
                                child: OrderSummaryWidget(
                                  errMsg: errMsg,
                                  isModal: widget.isModal,
                                  style: OrderSummaryStyle.webMyCart,
                                  onNext: widget.onNext,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(child: WishList()),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class OrderSummaryWidget extends StatefulWidget {
  const OrderSummaryWidget({
    super.key,
    required this.errMsg,
    this.isModal,
    this.style = OrderSummaryStyle.normal,
    this.onNext,
    this.onBack,
    this.onFinish,
    this.onLoading,
  });

  final String errMsg;
  final bool? isModal;
  final OrderSummaryStyle style;
  final void Function()? onNext;

  final Function? onBack;
  final Function? onFinish;
  final Function(bool)? onLoading;

  @override
  State<OrderSummaryWidget> createState() => _OrderSummaryWidgetState();
}

class _OrderSummaryWidgetState extends State<OrderSummaryWidget>
    with RazorDelegate, CheckoutMixin {
  @override
  Function? get onBack => widget.onBack;

  @override
  Function? get onFinish => widget.onFinish;

  @override
  Function(bool p1)? get onLoading => widget.onLoading;
  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context, listen: false);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: kGrey200.withOpacity(0.8),
            spreadRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShoppingCartSummary(style: widget.style),
          if (widget.errMsg.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Text(
                widget.errMsg,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          const SizedBox(height: 4.0),
          if ((widget.style.isWeb && widget.style.isWebMyCart) ||
              widget.style.isWeb == false)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16)
                  .copyWith(bottom: 24),
              child: CheckoutButton(
                isModal: widget.isModal,
                icon: const SizedBox(),
                borderRadius: 10,
              ),
            ),
          if (widget.style.isWeb &&
              !widget.style.isWebMyCart &&
              !widget.style.isWebCheckoutPayment)
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: widget.style.isWebCheckoutReview &&
                        cartModel.enableCheckoutButton
                    ? () {
                        widget.onNext?.call();
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(S.of(context).placeMyOrder),
                ),
              ),
            ),
          if (widget.style.isWebCheckoutPayment)
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: cartModel.enableCheckoutButton
                    ? () {
                        placeOrder(
                            context.read<PaymentMethodModel>(), cartModel);
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(S.of(context).placeMyOrder),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({
    super.key,
    this.isModal,
    this.borderRadius = 2.0,
    this.icon,
  });

  final bool? isModal;
  final Widget? icon;
  final double borderRadius;

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> with MyCartMixin {
  @override
  bool? get isModal => widget.isModal;

  @override
  Widget build(BuildContext context) {
    return Selector<CartModel, (bool, Map<String?, Product?>, bool)>(
      selector: (_, cartModel) => (
        cartModel.calculatingDiscount,
        cartModel.item,
        cartModel.enableCheckoutButton
      ),
      builder: (context, value, child) {
        var calculatingDiscount = value.$1;
        var enableCheckoutButton = value.$3;
        var isReadyForCheckout = !calculatingDiscount && enableCheckoutButton;

        return FloatingActionButton.extended(
          heroTag: null,
          onPressed: isReadyForCheckout
              ? () {
                  if (kAdvanceConfig.alwaysShowTabBar) {
                    MainTabControlDelegate.getInstance()
                        .changeTab(RouteList.cart, allowPush: false);
                    // return;
                  }
                  onCheckout(cartModel);
                }
              : null,
          elevation: 0,
          isExtended: true,
          extendedTextStyle: const TextStyle(
            letterSpacing: 0.8,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
          extendedPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          backgroundColor:
              isReadyForCheckout ? Theme.of(context).primaryColor : Colors.grey,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          label: child!,
        );
      },
      child: Selector<CartModel, int>(
        selector: (_, carModel) => cartModel.totalCartQuantity,
        builder: (context, totalCartQuantity, child) {
          // if (totalCartQuantity == 0) {
          //   return const SizedBox();
          // }
          return Row(
            children: [
              totalCartQuantity > 0
                  ? (isLoading
                      ? Text(S.of(context).loading.toUpperCase())
                      : Text(S.of(context).checkout.toUpperCase()))
                  : Text(S.of(context).startShopping.toUpperCase()),
              if (widget.icon == null) ...[
                const SizedBox(width: 3),
                const Icon(CupertinoIcons.right_chevron, size: 12),
              ]
            ],
          );
        },
      ),
    );
  }
}
