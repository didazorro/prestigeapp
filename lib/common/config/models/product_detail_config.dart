import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../config.dart';
import '../../tools.dart';

enum ProductDetailAttributeLayout {
  inline,
  dropdown,
  web,
  normal;

  factory ProductDetailAttributeLayout.fromString(String? value) {
    switch (value) {
      case 'inline':
        return ProductDetailAttributeLayout.inline;
      case 'web':
        return ProductDetailAttributeLayout.web;
      case 'dropdown':
        return ProductDetailAttributeLayout.dropdown;

      default:
        return ProductDetailAttributeLayout.normal;
    }
  }

  bool get isWeb => this == ProductDetailAttributeLayout.web;
}

enum BuyButtonStyle {
  fixedBottom,
  autoHideShow,
  normal;

  bool get isFixedBottom => this == BuyButtonStyle.fixedBottom;

  factory BuyButtonStyle.fromString(String? value) {
    switch (value) {
      case 'fixedBottom':
        return BuyButtonStyle.fixedBottom;
      case 'autoHideShow':
        return BuyButtonStyle.autoHideShow;

      default:
        return BuyButtonStyle.normal;
    }
  }
}

class ProductDetailConfig {
  late final double height;
  late final double marginTop;
  late final bool safeArea;
  late final bool showVideo;
  late final int showThumbnailAtLeast;
  late final String layout;
  late final double borderRadius;
  late final bool showSelectedImageVariant;
  late final bool forceWhiteBackground;
  late final bool autoSelectFirstAttribute;
  late final bool enableReview;
  late final double attributeImagesSize;
  late final bool showSku;
  late final bool showStockQuantity;
  late final bool showRating;
  late final bool showProductCategories;
  late final bool showProductTags;
  late final bool hideInvalidAttributes;
  late final bool showImageGallery;
  late final bool autoPlayGallery;
  late final bool allowMultiple;
  late final bool showBrand;
  late final bool showQuantityInList;
  late final bool showAddToCartInSearchResult;
  late final double productListItemHeight;
  late final String boxFit;
  late final bool sliderShowGoBackButton;
  late final SliderIndicatorType sliderIndicatorType;
  late final int? limitDayBooking;
  late final String productMetaDataKey;
  late final bool showRelatedProductFromSameStore;
  late final bool showRelatedProduct;
  late final bool showRecentProduct;
  late final ProductDetailAttributeLayout attributeLayout;

  late final bool expandBrands;
  late final bool expandSizeGuide;
  late final bool expandDescription;
  late final bool expandInfors;
  late final bool expandCategories;
  late final bool expandTags;
  late final bool expandReviews;

  /// Listing
  late final bool expandTaxonomies;
  late final bool expandListingMenu;
  late final bool expandMap;
  late final bool expandOpeningHours;
  late final bool showListCategoriesInTitle;
  late final bool showSocialLinks;

  /// list, page
  late final ProductImageType productImageLayout;

  /// BuyButtonStyle
  BuyButtonStyle _buyButtonStyle = BuyButtonStyle.normal;

  BuyButtonStyle get buyButtonStyle => _buyButtonStyle;

  bool get fixedBuyButtonToBottom => _buyButtonStyle.isFixedBottom;

  late final bool? _showStockStatus;
  bool get showStockStatus =>
      _showStockStatus ?? kAdvanceConfig.showStockStatus;

  late final bool alwaysShowBuyButton;

  ProductDetailConfig({
    required this.height,
    required this.marginTop,
    required this.safeArea,
    required this.showVideo,
    required this.showThumbnailAtLeast,
    required this.layout,
    required this.borderRadius,
    required this.showSelectedImageVariant,
    required this.forceWhiteBackground,
    required this.autoSelectFirstAttribute,
    required this.enableReview,
    required this.attributeImagesSize,
    required this.showSku,
    required this.showStockQuantity,
    required this.showRating,
    required this.showProductCategories,
    required this.showProductTags,
    required this.hideInvalidAttributes,
    required this.showImageGallery,
    required this.autoPlayGallery,
    required this.allowMultiple,
    required this.showBrand,
    required this.showQuantityInList,
    required this.showAddToCartInSearchResult,
    required this.productListItemHeight,
    required this.boxFit,
    required this.sliderShowGoBackButton,
    required this.sliderIndicatorType,
    required this.productMetaDataKey,
    required this.showRelatedProductFromSameStore,
    required this.showRelatedProduct,
    required this.showRecentProduct,
    this.limitDayBooking,
    required this.productImageLayout,
    required this.expandBrands,
    required this.expandSizeGuide,
    required this.expandDescription,
    required this.expandInfors,
    required this.expandCategories,
    required this.expandTags,
    required this.expandReviews,
    required this.expandTaxonomies,
    required this.expandListingMenu,
    required this.expandMap,
    required this.expandOpeningHours,
    required this.showListCategoriesInTitle,
    required this.showSocialLinks,
    BuyButtonStyle? buyButtonStyle,
    bool? showStockStatus,
    this.attributeLayout = ProductDetailAttributeLayout.normal,
    this.alwaysShowBuyButton = true,
  })  : _buyButtonStyle = buyButtonStyle ?? BuyButtonStyle.normal,
        _showStockStatus = showStockStatus;

  ProductDetailConfig.fromJson(Map config) {
    height = Tools.formatDouble(config['height']) ?? 0.4;
    marginTop = Tools.formatDouble(config['marginTop']) ?? 0.0;
    safeArea = config['safeArea'] ?? false;
    showVideo = config['showVideo'] ?? true;
    showThumbnailAtLeast = config['showThumbnailAtLeast'] ?? 1;
    layout = config['layout'] ?? 'simpleType';
    borderRadius = Tools.formatDouble(config['borderRadius']) ?? 3.0;
    showSelectedImageVariant = config['ShowSelectedImageVariant'] ?? true;
    forceWhiteBackground = config['ForceWhiteBackground'] ?? false;
    autoSelectFirstAttribute = config['AutoSelectFirstAttribute'] ?? true;
    enableReview = config['enableReview'] ?? false;
    attributeImagesSize =
        Tools.formatDouble(config['attributeImagesSize']) ?? 50.0;
    showSku = config['showSku'] ?? true;
    _showStockStatus = config['showStockStatus'];
    showStockQuantity = config['showStockQuantity'] ?? true;
    showRating = config['showRating'] ?? true;
    showProductCategories = config['showProductCategories'] ?? true;
    showProductTags = config['showProductTags'] ?? true;
    hideInvalidAttributes = config['hideInvalidAttributes'] ?? false;
    showImageGallery = config['ShowImageGallery'] ?? false;
    autoPlayGallery = config['autoPlayGallery'] ?? false;
    allowMultiple = config['allowMultiple'] ?? false;
    showBrand = config['showBrand'] ?? false;
    attributeLayout = ProductDetailAttributeLayout.fromString(
        config['attributeLayout'].toString());
    showQuantityInList = config['showQuantityInList'] ?? false;
    showAddToCartInSearchResult =
        config['showAddToCartInSearchResult'] ?? false;
    productListItemHeight =
        Helper.formatDouble(config['productListItemHeight']) ?? 125.0;
    limitDayBooking = config['limitDayBooking'];
    boxFit = config['boxFit'] ?? 'cover';
    sliderShowGoBackButton = config['SliderShowGoBackButton'] ?? true;
    sliderIndicatorType = SliderIndicatorType.fromString(
        config['SliderIndicatorType'].toString());
    productMetaDataKey = config['productMetaDataKey'] ?? '';
    showRelatedProductFromSameStore =
        config['showRelatedProductFromSameStore'] ?? true;
    showRelatedProduct = config['showRelatedProduct'] ?? true;
    showRecentProduct = config['showRecentProduct'] ?? true;
    productImageLayout =
        ProductImageType.fromString(config['productImageLayout']);
    expandBrands = config['expandBrands'] ?? true;
    expandSizeGuide = config['expandSizeGuide'] ?? true;
    expandDescription = config['expandDescription'] ?? true;
    expandInfors = config['expandInfors'] ?? true;
    expandCategories = config['expandCategories'] ?? true;
    expandTags = config['expandTags'] ?? true;
    expandReviews = config['expandReviews'] ?? true;
    expandTaxonomies = config['expandTaxonomies'] ?? true;
    expandListingMenu = config['expandListingMenu'] ?? true;
    expandMap = config['expandMap'] ?? true;
    expandOpeningHours = config['expandOpeningHours'] ?? true;
    showListCategoriesInTitle = config['showListCategoriesInTitle'] ?? true;
    showSocialLinks = config['showSocialLinks'] ?? true;

    if (config['buyButtonStyle'] != null) {
      _buyButtonStyle =
          BuyButtonStyle.fromString(config['buyButtonStyle']?.toString());
    } else if (config['fixedBuyButtonToBottom'] == true) {
      // `fixedBuyButtonToBottom` is the old style. If it is true then
      // buyButtonStyle has the value fixedBottom
      _buyButtonStyle = BuyButtonStyle.fixedBottom;
    }

    alwaysShowBuyButton = config['alwaysShowBuyButton'] ?? true;
  }

  ProductDetailConfig copyWith({
    double? height,
    double? marginTop,
    bool? safeArea,
    bool? showVideo,
    int? showThumbnailAtLeast,
    String? layout,
    double? borderRadius,
    bool? showSelectedImageVariant,
    bool? forceWhiteBackground,
    bool? autoSelectFirstAttribute,
    bool? enableReview,
    double? attributeImagesSize,
    bool? showSku,
    bool? showStockStatus,
    bool? showStockQuantity,
    bool? showRating,
    bool? showProductCategories,
    bool? showProductTags,
    bool? hideInvalidAttributes,
    bool? showImageGallery,
    bool? autoPlayGallery,
    bool? allowMultiple,
    bool? showBrand,
    bool? showQuantityInList,
    bool? showAddToCartInSearchResult,
    double? productListItemHeight,
    int? limitDayBooking,
    String? boxFit,
    bool? sliderShowGoBackButton,
    SliderIndicatorType? sliderIndicatorType,
    String? productMetaDataKey,
    bool? showRelatedProductFromSameStore,
    bool? showRelatedProduct,
    bool? showRecentProduct,
    String? productImageLayout,
    bool? expandBrands,
    bool? expandSizeGuide,
    bool? expandDescription,
    bool? expandInfors,
    bool? expandCategories,
    bool? expandTags,
    bool? expandReviews,
    bool? expandTaxonomies,
    bool? expandListingMenu,
    bool? expandMap,
    bool? expandOpeningHours,
    bool? showListCategoriesInTitle,
    bool? showSocialLinks,
    ProductDetailAttributeLayout? attributeLayout,
    BuyButtonStyle? buyButtonStyle,
    bool? alwaysShowBuyButton,
  }) {
    return ProductDetailConfig(
      attributeLayout: attributeLayout ?? this.attributeLayout,
      height: height ?? this.height,
      marginTop: marginTop ?? this.marginTop,
      safeArea: safeArea ?? this.safeArea,
      showVideo: showVideo ?? this.showVideo,
      showThumbnailAtLeast: showThumbnailAtLeast ?? this.showThumbnailAtLeast,
      layout: layout ?? this.layout,
      borderRadius: borderRadius ?? this.borderRadius,
      showSelectedImageVariant:
          showSelectedImageVariant ?? this.showSelectedImageVariant,
      forceWhiteBackground: forceWhiteBackground ?? this.forceWhiteBackground,
      autoSelectFirstAttribute:
          autoSelectFirstAttribute ?? this.autoSelectFirstAttribute,
      enableReview: enableReview ?? this.enableReview,
      attributeImagesSize: attributeImagesSize ?? this.attributeImagesSize,
      showSku: showSku ?? this.showSku,
      showStockStatus: showStockStatus ?? this.showStockStatus,
      showStockQuantity: showStockQuantity ?? this.showStockQuantity,
      showRating: showRating ?? this.showRating,
      showProductCategories:
          showProductCategories ?? this.showProductCategories,
      showProductTags: showProductTags ?? this.showProductTags,
      hideInvalidAttributes:
          hideInvalidAttributes ?? this.hideInvalidAttributes,
      showImageGallery: showImageGallery ?? this.showImageGallery,
      autoPlayGallery: autoPlayGallery ?? this.autoPlayGallery,
      allowMultiple: allowMultiple ?? this.allowMultiple,
      showBrand: showBrand ?? this.showBrand,
      showQuantityInList: showQuantityInList ?? this.showQuantityInList,
      showAddToCartInSearchResult:
          showAddToCartInSearchResult ?? this.showAddToCartInSearchResult,
      productListItemHeight:
          productListItemHeight ?? this.productListItemHeight,
      limitDayBooking: limitDayBooking ?? this.limitDayBooking,
      boxFit: boxFit ?? this.boxFit,
      sliderShowGoBackButton:
          sliderShowGoBackButton ?? this.sliderShowGoBackButton,
      sliderIndicatorType: sliderIndicatorType ?? this.sliderIndicatorType,
      productMetaDataKey: productMetaDataKey ?? this.productMetaDataKey,
      showRelatedProductFromSameStore: showRelatedProductFromSameStore ??
          this.showRelatedProductFromSameStore,
      showRelatedProduct: showRelatedProduct ?? this.showRelatedProduct,
      showRecentProduct: showRecentProduct ?? this.showRecentProduct,
      productImageLayout: ProductImageType.fromString(
          productImageLayout ?? this.productImageLayout.name),
      expandBrands: expandBrands ?? this.expandBrands,
      expandSizeGuide: expandSizeGuide ?? this.expandSizeGuide,
      expandDescription: expandDescription ?? this.expandDescription,
      expandInfors: expandInfors ?? this.expandInfors,
      expandCategories: expandCategories ?? this.expandCategories,
      expandTags: expandTags ?? this.expandTags,
      expandReviews: expandReviews ?? this.expandReviews,
      expandTaxonomies: expandTaxonomies ?? this.expandTaxonomies,
      expandListingMenu: expandListingMenu ?? this.expandListingMenu,
      expandMap: expandMap ?? this.expandMap,
      expandOpeningHours: expandOpeningHours ?? this.expandOpeningHours,
      showListCategoriesInTitle:
          showListCategoriesInTitle ?? this.showListCategoriesInTitle,
      showSocialLinks: showSocialLinks ?? this.showSocialLinks,
      buyButtonStyle: buyButtonStyle ?? _buyButtonStyle,
      alwaysShowBuyButton: alwaysShowBuyButton ?? this.alwaysShowBuyButton,
    );
  }

  Map toJSon() {
    return {
      'height': height,
      'marginTop': marginTop,
      'safeArea': safeArea,
      'attributeLayout': attributeLayout.name,
      'buyButtonStyle': _buyButtonStyle.name,
      'showVideo': showVideo,
      'showThumbnailAtLeast': showThumbnailAtLeast,
      'layout': layout,
      'borderRadius': borderRadius,
      'ShowSelectedImageVariant': showSelectedImageVariant,
      'ForceWhiteBackground': forceWhiteBackground,
      'AutoSelectFirstAttribute': autoSelectFirstAttribute,
      'enableReview': enableReview,
      'attributeImagesSize': attributeImagesSize,
      'showSku': showSku,
      'showStockStatus': showStockStatus,
      'showStockQuantity': showStockQuantity,
      'showRating': showRating,
      'showProductCategories': showProductCategories,
      'showProductTags': showProductTags,
      'hideInvalidAttributes': hideInvalidAttributes,
      'ShowImageGallery': showImageGallery,
      'autoPlayGallery': autoPlayGallery,
      'allowMultiple': allowMultiple,
      'showBrand': showBrand,
      'showQuantityInList': showQuantityInList,
      'showAddToCartInSearchResult': showAddToCartInSearchResult,
      'productListItemHeight': productListItemHeight,
      'limitDayBooking': limitDayBooking,
      'boxFit': boxFit,
      'SliderShowGoBackButton': sliderShowGoBackButton,
      'SliderIndicatorType': sliderIndicatorType.name,
      'productMetaDataKey': productMetaDataKey,
      'showRelatedProductFromSameStore': showRelatedProductFromSameStore,
      'showRelatedProduct': showRelatedProduct,
      'showRecentProduct': showRecentProduct,
      'productImageLayout': productImageLayout.name,
      'expandBrands': expandBrands,
      'expandSizeGuide': expandSizeGuide,
      'expandDescription': expandDescription,
      'expandInfors': expandInfors,
      'expandCategories': expandCategories,
      'expandTags': expandTags,
      'expandReviews': expandReviews,
      'expandTaxonomies': expandTaxonomies,
      'expandListingMenu': expandListingMenu,
      'expandMap': expandMap,
      'expandOpeningHours': expandOpeningHours,
      'showListCategoriesInTitle': showListCategoriesInTitle,
      'showSocialLinks': showSocialLinks,
      'alwaysShowBuyButton': alwaysShowBuyButton
    };
  }
}

enum SliderIndicatorType {
  number,
  dot,
  dotAlt;

  factory SliderIndicatorType.fromString(String? value) {
    switch (value) {
      case 'dotAlt':
        return SliderIndicatorType.dotAlt;
      case 'dot':
        return SliderIndicatorType.dot;

      default:
        return SliderIndicatorType.number;
    }
  }
}

enum ProductImageType {
  list,
  page;

  bool get isList => this == ProductImageType.list;

  bool get isPage => this == ProductImageType.page;

  factory ProductImageType.fromString(String? type) {
    switch (type) {
      case 'list':
        return ProductImageType.list;
      case 'page':
        return ProductImageType.page;
      default:
        return ProductImageType.page;
    }
  }
}
