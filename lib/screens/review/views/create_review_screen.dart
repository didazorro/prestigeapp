import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/extensions/extensions.dart';
import '../../../common/tools/image_tools.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/order/product_item.dart';
import '../../../models/user_model.dart';
import '../../../widgets/common/common_safe_area.dart';
import '../../../widgets/common/index.dart';
import '../../../widgets/common/loading_body.dart';
import '../../../widgets/common/star_rating.dart';
import '../../../widgets/html/index.dart';
import '../models/create_review_model.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key, required this.product});

  final ProductItem product;

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  ProductItem get product => widget.product;

  final _ratingNotifier = ValueNotifier(5.0);
  final _selectedAssetsImageNotifier = ValueNotifier<List<AssetEntity>>([]);
  final _textController = TextEditingController();

  int get _maxPhoto => kReviewConfig.maxImage;

  CreateReviewModel get createReviewModel =>
      Provider.of<CreateReviewModel>(context, listen: false);

  Future<void> _pickImages() async {
    final permissionState = await ImagePicker.checkGrantedPermission();
    if (permissionState.isDenied) {
      final confirmed = await context.showFluxDialogText(
        title: S.of(context).notice,
        body: S.of(context).pleaseAllowAccessCameraGallery,
        primaryAction: S.of(context).ok,
        secondaryAction: S.of(context).cancel,
        directionButton: Axis.horizontal,
      );
      if (confirmed) {
        await Future.delayed(const Duration(milliseconds: 200));
        await PhotoManager.openSetting();
      }

      return;
    }

    final selectedAssets = _selectedAssetsImageNotifier.value;
    final newSelected = await ImagePicker.select(
      context,
      maxFiles: _maxPhoto,
      selectedAssets: selectedAssets,
      requestType: RequestType.image,
    );

    await Future.delayed(const Duration(milliseconds: 500));

    _selectedAssetsImageNotifier.value =
        newSelected.isNotEmpty ? newSelected : selectedAssets;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      createReviewModel.setErrorCallback((error) {
        if (error != null) {
          Tools.showSnackBar(ScaffoldMessenger.of(context), error);
        }
      });

      createReviewModel.setSuccessCallback(() {
        Navigator.of(context)
            .pushReplacementNamed(RouteList.createReviewSuccess);
      });
    });
  }

  @override
  void dispose() {
    _ratingNotifier.dispose();
    _textController.dispose();
    super.dispose();
  }

  Future<void> submitReview() async {
    FocusScope.of(context).unfocus();

    final user = Provider.of<UserModel>(context, listen: false).user!;

    await createReviewModel.submitReview(
      productId: widget.product.productId!,
      email: user.email,
      name: user.fullName,
      token: user.cookie,
      rating: _ratingNotifier.value,
      content: _textController.text,
      images: _selectedAssetsImageNotifier.value,
    );
  }

  Future<bool> confirmBack() async {
    return context.showFluxDialogConfirm(
      title: S.of(context).areYouWantToExit,
      body: S.of(context).doYouWantToLeaveWithoutSubmit,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final styleOutlinedButton = OutlinedButton.styleFrom(
      side: BorderSide(
        color: theme.primaryColor,
      ),
    );
    return AutoHideKeyboard(
      child: WillPopScopeWidget(
        onWillPop: confirmBack,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              S.of(context).rateProduct,
              style: TextStyle(color: colorScheme.secondary),
            ),
            backgroundColor: colorScheme.surface,
          ),
          backgroundColor: colorScheme.surface,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: CommonSafeArea(
              child: Selector<CreateReviewModel, bool>(
                selector: (context, provider) => provider.isSubmitting,
                builder: (context, isSubmitting, child) {
                  return ValueListenableBuilder(
                    valueListenable: _textController,
                    builder: (context, content, child) {
                      return ElevatedButton(
                        onPressed: isSubmitting || content.text.isEmpty
                            ? null
                            : submitReview,
                        child: Text(S.of(context).submit),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          body: Selector<CreateReviewModel, bool>(
            selector: (context, provider) => provider.isSubmitting,
            builder: (context, isSubmitting, child) {
              return LoadingBody(
                isLoading: isSubmitting,
                child: child!,
              );
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 85,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: ImageResize(
                              url: product.featuredImage ?? kDefaultImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 2),
                              Text(
                                Bidi.stripHtmlIfNeeded(product.name ?? ''),
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (product.addonsOptions.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child:
                                      HtmlWidget(product.displayAddonOptions),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (kAdvanceConfig.enableRating)
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ValueListenableBuilder<double>(
                          valueListenable: _ratingNotifier,
                          builder: (_, rating, child) {
                            return Column(
                              children: [
                                SmoothStarRating(
                                  allowHalfRating: false,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  onRatingChanged: (rating) =>
                                      _ratingNotifier.value = rating,
                                  starCount: 5,
                                  rating: rating,
                                  size: 32.0,
                                  color: Theme.of(context).primaryColor,
                                  borderColor: Theme.of(context).primaryColor,
                                  spacing: 8.0,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  ratingFeedback(rating),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            );
                          }),
                    ),
                  const SizedBox(height: 16),
                  Text(
                    'Enter your review',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText:
                          'Share more thoughts on the product to help other buyers.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    minLines: 5,
                    maxLines: 8,
                  ),
                  const SizedBox(height: 24),
                  if (kReviewConfig.enableReviewImage)
                    ValueListenableBuilder<List<AssetEntity>>(
                      valueListenable: _selectedAssetsImageNotifier,
                      builder: (context, selectedAssetsImages, child) {
                        if (selectedAssetsImages.isEmpty) {
                          return OutlinedButton(
                            onPressed: _pickImages,
                            style: styleOutlinedButton,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.camera_alt),
                                  const SizedBox(height: 8),
                                  Text(S.of(context).uploadImage),
                                ],
                              ),
                            ),
                          );
                        }
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: 1,
                          ),
                          itemCount: selectedAssetsImages.length < _maxPhoto
                              ? selectedAssetsImages.length + 1
                              : selectedAssetsImages.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final selectedNumber = selectedAssetsImages.length;
                            if (index == selectedAssetsImages.length) {
                              return OutlinedButton(
                                onPressed: _pickImages,
                                style: styleOutlinedButton,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.camera_alt_outlined),
                                      const SizedBox(height: 8),
                                      Text('$selectedNumber/$_maxPhoto'),
                                    ],
                                  ),
                                ),
                              );
                            }

                            final asset = selectedAssetsImages[index];
                            return _AssetImageWidget(
                              key: ValueKey(asset.id),
                              asset: asset,
                              onRemove: () {
                                final newAssets = List<AssetEntity>.from(
                                    _selectedAssetsImageNotifier.value);
                                newAssets.removeAt(index);
                                _selectedAssetsImageNotifier.value = newAssets;
                              },
                            );
                          },
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String ratingFeedback(double rating) {
    if (rating <= 1.0) {
      return S.of(context).terrible;
    } else if (rating <= 2.0) {
      return S.of(context).poor;
    } else if (rating <= 3.0) {
      return S.of(context).fair;
    } else if (rating <= 4.0) {
      return S.of(context).good;
    } else {
      return S.of(context).amazing;
    }
  }
}

class _AssetImageWidget extends StatelessWidget {
  const _AssetImageWidget({
    super.key,
    required this.asset,
    this.onRemove,
  });

  final AssetEntity asset;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AssetEntityImage(
              asset,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            Positioned.directional(
              top: 2,
              end: 10,
              height: 36,
              width: 22,
              textDirection: Directionality.of(context),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(0),
                  backgroundColor: Theme.of(context).colorScheme.surface,
                ),
                onPressed: onRemove,
                child: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.inverseSurface,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
