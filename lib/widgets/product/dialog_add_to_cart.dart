import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../models/index.dart' show Product, ProductModel;
import '../../models/product_variant_model.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../screens/detail/widgets/index.dart';
import '../../services/index.dart';

class DialogAddToCart {
  static void show(BuildContext context,
      {required Product product, int quantity = 1}) {
    final body = Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10.0),
        ),
      ),
      child: AutoHideKeyboard(
        child: Stack(
          children: [
            RubberAddToCart(product: product, quantity: quantity),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.surface.withOpacity(0.9),
                  child: Icon(
                    CupertinoIcons.xmark_circle,
                    size: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (Layout.isDisplayDesktop(context)) {
      showDialog(
        context: context,
        builder: (context) => Center(
          child: SizedBox(
            width: 700,
            height: MediaQuery.of(context).size.height * 0.85,
            child: body,
          ),
        ),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.85,
        child: body,
      ),
    );
  }
}

class RubberAddToCart extends StatefulWidget {
  final Product product;
  final int quantity;
  const RubberAddToCart({required this.product, this.quantity = 1});

  @override
  State<RubberAddToCart> createState() => _StateRubberAddToCart();
}

class _StateRubberAddToCart extends State<RubberAddToCart> {
  bool isLoading = true;
  late Product product = widget.product;

  @override
  void initState() {
    Future.microtask(() async {
      product = (await Services().widget.getProductDetail(context, product)) ??
          widget.product;
      isLoading = false;
      if (mounted) {
        setState(() {});
      }
    });

    super.initState();
  }

  Widget renderProductInfo() {
    var body;
    if (isLoading == true) {
      body = Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: kLoadingWidget(context),
      );
    } else {
      switch (product.type) {
        case 'appointment':
          return Services().getBookingLayout(product: product);
        case 'booking':
          body = ListingBooking(product);
          break;
        case 'grouped':
          body = GroupedProduct(product);
          break;
        default:
          body = ProductVariant(
            product,
            defaultQuantity: widget.quantity,
            onSelectVariantImage: (String url) {},
            isModal: true,
            isProductInfoLoading: isLoading,
          );
      }
    }
    return SliverToBoxAdapter(child: body);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductModel(),
      child: ChangeNotifierProvider(
        create: (_) => ProductVariantModel()..initWithProduct(product),
        child: Consumer<ProductVariantModel>(builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
                SliverToBoxAdapter(child: ProductTitle(product)),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                    child: Column(
                  children: [
                    Services().renderTiredPriceTable(product),
                    Services().renderCustomInformationTable(product),
                  ],
                )),
                renderProductInfo(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
