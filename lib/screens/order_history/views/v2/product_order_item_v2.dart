import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:intl/intl.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../common/tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/entities/store_delivery_date.dart';
import '../../../../models/index.dart';
import '../../../../modules/dynamic_layout/helper/helper.dart';
import '../../../../services/index.dart';
import '../../../../widgets/common/flux_image.dart';
import '../../../../widgets/html/index.dart';
import '../../../../widgets/product/action_button_mixin.dart';
import '../../../index.dart';

class ProductOrderItemNew extends StatefulWidget {
  final String orderId;
  final OrderStatus orderStatus;
  final ProductItem product;
  final List<StoreDeliveryDate>? storeDeliveryDates;
  final String? currencyCode;
  final bool disableReview;

  /// For prestashop.
  final int index;

  const ProductOrderItemNew({
    required this.orderId,
    required this.orderStatus,
    required this.product,
    this.storeDeliveryDates,
    this.currencyCode,
    this.index = 0,
    this.disableReview = false,
  });

  @override
  BaseScreen<ProductOrderItemNew> createState() => _StateProductOrderItem();
}

class _StateProductOrderItem extends BaseScreen<ProductOrderItemNew>
    with ActionButtonMixin {
  Product? product;
  late String imageFeatured = kDefaultImage;
  bool isLoading = true;
  bool _isGetInfoProduct = false;

  @override
  void afterFirstLayout(BuildContext context) async {
    super.afterFirstLayout(context);

    if (widget.product.featuredImage == null) {
      // Try to load product because listing app will load listing product
      // instead of WooComerce product. And order history item cannot be listing
      var productObj = await Services().api.overrideGetProduct(
            widget.product.productId,
          );
      if (productObj != null) {
        setState(() {
          product = productObj;
          imageFeatured = product!.imageFeature ?? kDefaultImage;
        });
      }
    } else {
      setState(() {
        imageFeatured = widget.product.featuredImage ?? kDefaultImage;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  void navigateToProductDetail() async {
    if (product == null) {
      setState(() {
        _isGetInfoProduct = true;
      });
      // Try to load product because listing app will load listing product
      // instead of WooComerce product. And order history item cannot be listing
      final productVal =
          await Services().api.overrideGetProduct(widget.product.productId);
      setState(() {
        product = productVal;
        _isGetInfoProduct = false;
      });
    }
    if (product != null) {
      onTapProduct(context, product: product!);
    }
  }

  Widget _buildItemDesc(String title, String content) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 3.0,
        vertical: 3.0,
      ),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 8,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const Spacer(),
          Text(
            content,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currencyCode =
        widget.currencyCode ?? Provider.of<AppModel>(context).currencyCode;
    var addonsOptions = {};
    if (widget.product.addonsOptions.isNotEmpty) {
      for (var element in widget.product.addonsOptions.keys) {
        addonsOptions[element] =
            Tools.getFileNameFromUrl(widget.product.addonsOptions[element]!);
      }
    }
    var deliveryDate;
    if (widget.storeDeliveryDates != null &&
        widget.storeDeliveryDates!.isNotEmpty) {
      var storeIndex = widget.storeDeliveryDates!
          .indexWhere((element) => element.storeId == widget.product.storeId);

      if (storeIndex != -1) {
        deliveryDate = widget.storeDeliveryDates![storeIndex].displayDDate;
      }
    }

    final titleMedium = Theme.of(context).textTheme.titleMedium!;
    final subtitle = Theme.of(context).textTheme.bodySmall!.copyWith(
        fontSize: 12.0,
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.8));

    return GestureDetector(
      onTap: navigateToProductDetail,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey.withOpacity(0.2),
                    child: isLoading
                        ? const Skeleton(
                            width: 80,
                            height: 80,
                          )
                        : Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: FluxImage(
                                  imageUrl: imageFeatured,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              // make shadow
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0),
                                        Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0.2),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Bidi.stripHtmlIfNeeded(
                          widget.product.name!,
                        ),
                        style:
                            titleMedium.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                                S.of(context).qtyTotal(widget.product.quantity),
                                style: subtitle),
                          ),
                          if (widget.orderStatus == OrderStatus.completed)
                            if (!kPaymentConfig.enableShipping ||
                                !kPaymentConfig.enableAddress)
                              DownloadButton(widget.product.productId),
                        ],
                      ),
                      if (widget.product.addonsOptions.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: HtmlWidget(
                            addonsOptions.values.join(', '),
                            textStyle: subtitle,
                          ),
                        ),
                      if (widget.product.prodOptions.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ProductOptions(
                              prodOptions: widget.product.prodOptions),
                        ),
                      if (widget.product.storeName != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            widget.product.storeName ?? '',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Text(
                                PriceTools.getCurrencyFormatted(
                                    widget.product.total, null,
                                    currency: currencyCode)!,
                                textAlign: TextAlign.right,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),

                      /// Review for completed order only.
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: SizedBox(
                          height: 32,
                          child: Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _isGetInfoProduct
                                      ? () {}
                                      : navigateToProductDetail,
                                  child: _isGetInfoProduct
                                      ? JumpingDots(
                                          animationDuration:
                                              const Duration(milliseconds: 100),
                                          innerPadding: 3,
                                          radius: 4,
                                          verticalOffset: 8,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        )
                                      : Text(S.of(context).view),
                                ),
                              ),
                              if (Layout.isDisplayDesktop(context) == false &&
                                  (widget.orderStatus ==
                                          OrderStatus.completed &&
                                      !widget.disableReview)) ...[
                                const SizedBox(width: 16),
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          RouteList.createReview,
                                          arguments: widget.product);
                                    },
                                    child: Text(S.of(context).rate),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5.0),
            //   child: Reviews(
            //     widget.product.productId,
            //     showYourRatingOnly: true,
            //   ),
            // ),
            // const SizedBox(height: 5),
            // _buildItemDesc(
            //   S.of(context).itemTotal,
            //   PriceTools.getCurrencyFormatted(
            //     widget.product.total,
            //     null,
            //     currency: currencyCode,
            //   )!,
            // ),
            if (deliveryDate != null) ...[
              const SizedBox(height: 2),
              _buildItemDesc(S.of(context).deliveryDate, deliveryDate),
            ],
          ],
        ),
      ),
    );
  }
}

class DownloadButton extends StatefulWidget {
  final String? id;

  const DownloadButton(this.id);

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool isLoading = false;

  void _handleDownloadAction(String file) async {
    try {
      Navigator.pop(context);
      setState(() => isLoading = true);

      await Tools.launchURL(
        file,
        mode: LaunchMode.externalApplication,
      );

      await Future.delayed(const Duration(milliseconds: 200));

      setState(() => isLoading = false);
    } catch (err) {
      Tools.showSnackBar(ScaffoldMessenger.of(context), '$err');
    }
  }

  void _showDownloadableFiles(BuildContext context) async {
    try {
      setState(() => isLoading = true);

      var product = await Services().api.overrideGetProduct(widget.id);

      setState(() => isLoading = false);

      if (product?.files?.isEmpty ?? true) {
        throw (S.of(context).noFileToDownload);
      }

      var files = product!.files!;

      if (files.length == 1) {
        final file = files[0];
        if (file != null) {
          _handleDownloadAction(file);
        }
      } else {
        await showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: ListView.separated(
                    itemCount: files.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final file = files[index];
                      final fileNames =
                          product.fileNames?[index] ?? S.of(context).files;

                      return ListTile(
                        title: Text(fileNames),
                        trailing: ElevatedButton(
                          onPressed: () async {
                            if (file != null) {
                              _handleDownloadAction(file);
                            }
                          },
                          child: Text(
                            S.of(context).download,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 1,
                  decoration: const BoxDecoration(color: kGrey200),
                ),
                ListTile(
                  title: Text(
                    S.of(context).selectTheFile,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        );
      }
    } catch (err) {
      Tools.showSnackBar(ScaffoldMessenger.of(context), '$err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      onPressed: isLoading ? null : () => _showDownloadableFiles(context),
      icon: isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
            )
          : Icon(
              Icons.file_download,
              color: Theme.of(context).primaryColor,
            ),
      label: Text(
        S.of(context).download,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class ProductOptions extends StatelessWidget {
  final List<Map<String, dynamic>?> prodOptions;

  const ProductOptions({required this.prodOptions});

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var option in prodOptions) {
      list.add(Row(
        children: [
          HtmlWidget(option!['name'] + ':'),
          const SizedBox(width: 10.0),
          Text(option['value']),
        ],
      ));
      list.add(const SizedBox(
        height: 5.0,
      ));
    }
    return Column(children: list);
  }
}
