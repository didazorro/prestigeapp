part of '../config.dart';

class Configurations {
  static String _environment = DefaultConfig.environment;
  static String _baseUrl = DefaultConfig.baseUrl;
  static String _webProxy = DefaultConfig.webProxy;
  static String _appName = DefaultConfig.appName;
  static bool _enableCrashAnalytics = DefaultConfig.enableCrashAnalytics;
  static bool _enableRemoteConfigFirebase =
      DefaultConfig.enableRemoteConfigFirebase;
  static bool _enableFirebaseAnalytics = DefaultConfig.enableFirebaseAnalytics;
  static bool _enableFacebookAppEvents = DefaultConfig.enableFacebookAppEvents;
  static String _defaultLanguage = DefaultConfig.defaultLanguage;
  static Map serverConfig = DefaultConfig.serverConfig;
  static String _appConfig = DefaultConfig.appConfig;
  static bool _defaultDarkTheme = DefaultConfig.defaultDarkTheme;
  static String _countryCodeDefault = DefaultConfig.countryCodeDefault;
  static String _dialCodeDefault = DefaultConfig.dialCodeDefault;
  static String _nameDefault = DefaultConfig.nameDefault;
  static Map _advanceConfig = DefaultConfig.advanceConfig;
  static AppRatingConfig _appRatingConfig =
      AppRatingConfig.fromMap(DefaultConfig.appRatingConfig);
  static List _defaultSettings = DefaultConfig.defaultSettings;
  static Map _loginSetting = DefaultConfig.loginSetting;
  static Map _defaultDrawer = DefaultConfig.defaultDrawer;
  static Map _oneSignalKey = DefaultConfig.oneSignalKey;
  static Map _onBoardingConfig = DefaultConfig.onBoardingConfig;
  static List _vendorOnBoardingData = DefaultConfig.vendorOnBoardingData;
  static Map _productDetail = DefaultConfig.productDetail;
  static Map _blogDetail = DefaultConfig.blogDetail;
  static Map _productVariantLayout = DefaultConfig.productVariantLayout;
  static Map _adConfig = DefaultConfig.adConfig;
  static Map _firebaseDynamicLinkConfig =
      DefaultConfig.firebaseDynamicLinkConfig;
  static List<Map> _languagesInfo = DefaultConfig.languagesInfo;
  static Map _paymentConfig = DefaultConfig.paymentConfig;
  static Map _payments = DefaultConfig.payments;
  static Map _stripeConfig = DefaultConfig.stripeConfig;
  static Map _paypalConfig = DefaultConfig.paypalConfig;
  static Map _paypalExpressConfig = DefaultConfig.paypalExpressConfig;
  static Map _razorpayConfig = DefaultConfig.razorpayConfig;
  static Map _tapConfig = DefaultConfig.tapConfig;
  static Map _payTmConfig = DefaultConfig.payTmConfig;
  static Map _payStackConfig = DefaultConfig.payStackConfig;
  static Map _flutterwaveConfig = DefaultConfig.flutterwaveConfig;
  static Map _myFatoorahConfig = DefaultConfig.myFatoorahConfig;
  static Map _mercadoPagoConfig = DefaultConfig.mercadoPagoConfig;
  static Map _midtransConfig = DefaultConfig.midtransConfig;
  static Map _inAppPurchaseConfig = DefaultConfig.inAppPurchaseConfig;
  static Map _xenditConfig = DefaultConfig.xenditConfig;
  static Map _expressPayConfig = DefaultConfig.expressPayConfig;
  static Map _thaiPromptPayConfig = DefaultConfig.thaiPromptPayConfig;
  static Map _fibConfig = DefaultConfig.fibConfig;
  static Map _thawaniConfig = DefaultConfig.thawaniConfig;
  static Map _afterShip = DefaultConfig.afterShip;
  static Map _productAddons = DefaultConfig.productAddons;
  static Map _cartDetail = DefaultConfig.cartDetail;
  static Map _productVariantLanguage = DefaultConfig.productVariantLanguage;
  static Map _saleOffProduct = DefaultConfig.saleOffProduct;
  static String? _excludedCategoryIDs = DefaultConfig.excludedCategoryIDs;
  static String? _excludedProductIDs = DefaultConfig.excludedProductIDs;
  static bool _notStrictVisibleVariant = DefaultConfig.notStrictVisibleVariant;
  static ConfigChat _configChat = ConfigChat.fromJson(DefaultConfig.configChat);
  static List<Map> _smartChat = DefaultConfig.smartChat;
  static VendorConfig _vendorConfig =
      VendorConfig.fromJson(DefaultConfig.vendorConfig);
  static List<AddressFieldConfig> _addressFields = DefaultConfig.addressFields;
  static List _defaultCountryShipping = DefaultConfig.defaultCountryShipping;
  static Map? _loadingIcon = DefaultConfig.loadingIcon;
  static Map _productCard = DefaultConfig.productCard;
  static Map _loginSMSConstants = DefaultConfig.loginSMSConstants;
  static PhoneNumberConfig _phoneNumberConfig =
      PhoneNumberConfig.fromJson(DefaultConfig.phoneNumberConfig);
  static Map _darkConfig = DefaultConfig.darkConfig;
  static Map _lightConfig = DefaultConfig.lightConfig;
  static String _version = DefaultConfig.version;
  static Map _subGeneralSetting = DefaultConfig.subGeneralSetting;
  static Map _splashScreen = DefaultConfig.splashScreen;
  static Map _colorOverrideConfig = DefaultConfig.colorOverrideConfig;
  static GoogleApiKeyConfig _googleApiKey = DefaultConfig.googleApiKey;
  static OrderConfig _orderConfig = DefaultConfig.orderConfig;
  static Map? _managerConfig;
  static Map? _deliveryConfig;
  static Map? _salesiqConfig;
  static Map? _shopifyPaymentConfig;
  static Map? _openAIConfig;
  static Map? _notificationRequestScreen;
  static Map? _reviewConfig;
  static List<MultiSiteConfig>? _multiSiteConfigs;
  static Map? _boostEngine;
  static Map? _branchConfig;
  static double? _maxTextScale;
  static Map? _outsideService;
  static DynamicLinkConfig _dynamicLinkConfig = DefaultConfig.dynamicLinkConfig;

  /// only support firebase remote config
  static Map<String, dynamic>? _layoutDesign;

  static String get environments => _environment;

  static String get version => _version;

  static String get baseUrl => _baseUrl;

  static String get webProxy => _webProxy;

  static String get appName => _appName;

  static bool get enableCrashAnalytics => _enableCrashAnalytics;

  static bool get enableRemoteConfigFirebase => _enableRemoteConfigFirebase;

  static bool get enableFirebaseAnalytics => _enableFirebaseAnalytics;

  static bool get enableFacebookAppEvents => _enableFacebookAppEvents;

  static String get defaultLanguage => _defaultLanguage;

  static String get appConfig => _appConfig;

  static bool get defaultDarkTheme => _defaultDarkTheme;

  static String get countryCodeDefault => _countryCodeDefault;

  static String get dialCodeDefault => _dialCodeDefault;

  static String get nameDefault => _nameDefault;

  static Map get advanceConfig => _advanceConfig;

  static AppRatingConfig get appRatingConfig => _appRatingConfig;

  static List get defaultSettings => _defaultSettings;

  static Map get loginSetting => _loginSetting;

  static Map get defaultDrawer => _defaultDrawer;

  static Map get oneSignalKey => _oneSignalKey;

  static Map get onBoardingConfig => _onBoardingConfig;

  static List get vendorOnBoardingData => _vendorOnBoardingData;

  static Map get productDetail => _productDetail;

  static Map get blogDetail => _blogDetail;

  static Map get productVariantLayout => _productVariantLayout;

  static Map get adConfig => _adConfig;

  static Map get firebaseDynamicLinkConfig => _firebaseDynamicLinkConfig;

  static List<Map> get languagesInfo => _languagesInfo;

  static Map get paymentConfig => _paymentConfig;

  static Map get payments => _payments;

  static Map get stripeConfig => _stripeConfig;

  static Map get paypalConfig => _paypalConfig;

  static Map get paypalExpressConfig => _paypalExpressConfig;

  static Map get razorpayConfig => _razorpayConfig;

  static Map get tapConfig => _tapConfig;

  static Map get payTmConfig => _payTmConfig;

  static Map get payStackConfig => _payStackConfig;

  static Map get flutterwaveConfig => _flutterwaveConfig;

  static Map get myFatoorahConfig => _myFatoorahConfig;

  static Map get mercadoPagoConfig => _mercadoPagoConfig;

  static Map get midtransConfig => _midtransConfig;

  static Map get inAppPurchaseConfig => _inAppPurchaseConfig;

  static Map get xenditConfig => _xenditConfig;

  static Map get expressPayConfig => _expressPayConfig;

  static Map get thaiPromptPayConfig => _thaiPromptPayConfig;

  static Map get fibConfig => _fibConfig;

  static Map get thawaniConfig => _thawaniConfig;

  static Map get afterShip => _afterShip;

  static Map get productAddons => _productAddons;

  static Map get cartDetail => _cartDetail;

  static Map get productVariantLanguage => _productVariantLanguage;

  static Map get saleOffProduct => _saleOffProduct;

  static String? get excludedCategoryIDs => _excludedCategoryIDs;

  static String? get excludedProductIDs => _excludedProductIDs;

  static bool get notStrictVisibleVariant => _notStrictVisibleVariant;

  static ConfigChat get configChat => _configChat;

  static List<Map> get smartChat => _smartChat;

  static VendorConfig get vendorConfig => _vendorConfig;

  static List<AddressFieldConfig> get addressFields => _addressFields;

  static List get defaultCountryShipping => _defaultCountryShipping;

  static Map? get loadingIcon => _loadingIcon;

  static Map get productCard => _productCard;

  static Map get loginSMSConstants => _loginSMSConstants;

  static PhoneNumberConfig get phoneNumberConfig => _phoneNumberConfig;

  static Map get darkConfig => _darkConfig;

  static Map get lightConfig => _lightConfig;

  static Map get subGeneralSetting => _subGeneralSetting;

  static Map get splashScreen => _splashScreen;

  static Map get colorOverrideConfig => _colorOverrideConfig;

  static GoogleApiKeyConfig get googleApiKey => _googleApiKey;

  static Map<String, dynamic>? get layoutDesign => _layoutDesign;

  static Map? get managerConfig => _managerConfig;

  static Map? get deliveryConfig => _deliveryConfig;

  static Map? get salesiqConfig => _salesiqConfig;

  static Map? get shopifyPaymentConfig => _shopifyPaymentConfig;

  static Map? get openAIConfig => _openAIConfig;

  static Map? get notificationRequestScreen => _notificationRequestScreen;

  static Map? get reviewConfig => _reviewConfig;

  static Map? get boostEngine => _boostEngine;

  static Map? get branchConfig => _branchConfig;

  static double? get maxTextScale => _maxTextScale;

  static OrderConfig get orderConfig => _orderConfig;

  static List<MultiSiteConfig>? get multiSiteConfigs => _multiSiteConfigs;

  static String get mainSiteUrl => (_multiSiteConfigs?.isNotEmpty ?? false)
      ? _multiSiteConfigs!.first.serverConfig!['url']
      : serverConfig['url'];

  static Map? get outsideService => _outsideService;

  static DynamicLinkConfig get dynamicLinkConfig => _dynamicLinkConfig;

  void setConfigurationValues(Map<String, dynamic> value) {
    _environment = value['environment'] ?? DefaultConfig.environment;
    _baseUrl = value['baseUrl'] ?? DefaultConfig.baseUrl;
    _webProxy = value['webProxy'] ?? DefaultConfig.webProxy;
    _appName = value['app_name'] ?? DefaultConfig.appName;
    _maxTextScale = num.tryParse('${value['maxTextScale']}')?.toDouble() ??
        DefaultConfig.maxTextScale;
    _enableCrashAnalytics =
        value['enableCrashAnalytics'] ?? DefaultConfig.enableCrashAnalytics;
    _enableRemoteConfigFirebase = value['enableRemoteConfigFirebase'] ??
        DefaultConfig.enableRemoteConfigFirebase;
    _enableFirebaseAnalytics = value['enableFirebaseAnalytics'] ??
        DefaultConfig.enableFirebaseAnalytics;
    _enableFacebookAppEvents = value['enableFacebookAppEvents'] ??
        DefaultConfig.enableFacebookAppEvents;
    _defaultLanguage =
        value['defaultLanguage'] ?? DefaultConfig.defaultLanguage;
    _appConfig = value['appConfig'] ?? DefaultConfig.appConfig;
    serverConfig = value['serverConfig'] ?? DefaultConfig.serverConfig;
    _defaultDarkTheme =
        value['defaultDarkTheme'] ?? DefaultConfig.defaultDarkTheme;
    _appRatingConfig = AppRatingConfig.fromMap(value['appRatingConfig'] ??
        value['storeIdentifier'] ??
        DefaultConfig.appRatingConfig);
    _advanceConfig = value['advanceConfig'] != null
        ? Map.from(value['advanceConfig'])
        : DefaultConfig.advanceConfig;
    _countryCodeDefault = DefaultConfig.countryCodeDefault;
    _dialCodeDefault = DefaultConfig.dialCodeDefault;
    _nameDefault = DefaultConfig.nameDefault;
    _defaultSettings =
        value['defaultSettings'] ?? DefaultConfig.defaultSettings;
    _loginSetting = value['loginSetting'] ?? DefaultConfig.loginSetting;
    _defaultDrawer = value['defaultDrawer'] ?? DefaultConfig.defaultDrawer;
    _oneSignalKey = value['oneSignalKey'] ?? DefaultConfig.oneSignalKey;

    if (value['onBoardingConfig'] != null) {
      _onBoardingConfig = value['onBoardingConfig'];
    } else {
      // Support the old config
      if (value['onBoardingData'] == null) {
        _onBoardingConfig = DefaultConfig.onBoardingConfig;
      } else {
        _onBoardingConfig = {
          'enableOnBoarding': true,
          'version': 1,
          'data': value['onBoardingData'],
        };
      }

      if (value['enableOnBoarding'] != null) {
        _onBoardingConfig['enableOnBoarding'] =
            value['enableOnBoarding'] == true;
      }

      if (value['advanceConfig']?['OnBoardOnlyShowFirstTime'] != null) {
        _onBoardingConfig['isOnlyShowOnFirstTime'] =
            value['advanceConfig']?['OnBoardOnlyShowFirstTime'] == true;
      }
    }

    _vendorOnBoardingData =
        value['vendorOnBoardingData'] ?? DefaultConfig.vendorOnBoardingData;
    _productDetail = value['productDetail'] ?? DefaultConfig.productDetail;
    _blogDetail = value['blogDetail'] ?? DefaultConfig.blogDetail;
    _productVariantLayout =
        value['productVariantLayout'] ?? DefaultConfig.productVariantLayout;
    _adConfig = value['adConfig'] ?? DefaultConfig.adConfig;
    _firebaseDynamicLinkConfig = value['firebaseDynamicLinkConfig'] ??
        DefaultConfig.firebaseDynamicLinkConfig;
    _languagesInfo =
        List<Map>.from(value['languagesInfo'] ?? DefaultConfig.languagesInfo);
    _paymentConfig = value['paymentConfig'] ?? DefaultConfig.paymentConfig;
    _payments = value['payments'] ?? DefaultConfig.payments;
    if (value['stripeConfig'] != null) {
      // TODO(LOC): Workaround for release FluxStore version 3.13.0
      _stripeConfig = value['stripeConfig'];
      _stripeConfig['paymentMethodIds'] ??= [];

      /// To support old paymentMethodId param
      if (_stripeConfig['paymentMethodId'] != null) {
        _stripeConfig['paymentMethodIds'] = [
          ..._stripeConfig['paymentMethodIds'],
          _stripeConfig['paymentMethodId']
        ];
      }
    } else {
      _stripeConfig = DefaultConfig.stripeConfig;
      _stripeConfig['paymentMethodIds'] ??= [];
    }
    _paypalConfig = value['paypalConfig'] ?? DefaultConfig.paypalConfig;
    _paypalExpressConfig =
        value['paypalExpressConfig'] ?? DefaultConfig.paypalExpressConfig;
    _razorpayConfig = value['razorpayConfig'] ?? DefaultConfig.razorpayConfig;
    _tapConfig = value['tapConfig'] ?? DefaultConfig.tapConfig;
    _payTmConfig = value['payTmConfig'] ?? DefaultConfig.payTmConfig;
    _payStackConfig = value['payStackConfig'] ?? DefaultConfig.payStackConfig;
    _flutterwaveConfig =
        value['flutterwaveConfig'] ?? DefaultConfig.flutterwaveConfig;
    _myFatoorahConfig =
        value['myFatoorahConfig'] ?? DefaultConfig.myFatoorahConfig;
    _mercadoPagoConfig =
        value['mercadoPagoConfig'] ?? DefaultConfig.mercadoPagoConfig;
    _midtransConfig = value['midtransConfig'] ?? DefaultConfig.midtransConfig;
    _inAppPurchaseConfig =
        value['inAppPurchaseConfig'] ?? DefaultConfig.inAppPurchaseConfig;
    _xenditConfig = value['xenditConfig'] ?? DefaultConfig.xenditConfig;
    _expressPayConfig =
        value['expressPayConfig'] ?? DefaultConfig.expressPayConfig;
    _thaiPromptPayConfig =
        value['thaiPromptPayConfig'] ?? DefaultConfig.thaiPromptPayConfig;
    _fibConfig = value['fibConfig'] ?? DefaultConfig.fibConfig;
    _thawaniConfig = value['thawaniConfig'] ?? DefaultConfig.thawaniConfig;
    _afterShip = value['afterShip'] ?? DefaultConfig.afterShip;
    _productAddons = value['productAddons'] ?? DefaultConfig.productAddons;
    _cartDetail = value['cartDetail'] ?? DefaultConfig.cartDetail;
    _productVariantLanguage =
        value['productVariantLanguage'] ?? DefaultConfig.productVariantLanguage;
    _saleOffProduct = value['saleOffProduct'] ?? DefaultConfig.saleOffProduct;
    _excludedCategoryIDs = value['excludedCategoryIDs']?.toString() ??
        value['excludedCategory']?.toString();
    _excludedProductIDs = value['excludedProductIDs']?.toString();
    _notStrictVisibleVariant = value['notStrictVisibleVariant'] ??
        DefaultConfig.notStrictVisibleVariant;

    var realtimeChatConfig;
    if (value['configChat']?['realtimeChatConfig'] != null) {
      realtimeChatConfig = RealtimeChatConfig.fromJson(
          value['configChat']?['realtimeChatConfig']);
    } else {
      // Adapt for old version
      realtimeChatConfig = RealtimeChatConfig(
        adminEmail: value['adminEmail'],
        adminName: value['adminName'],
        enable: value['configChat']?['UseRealtimeChat'],
      );
    }
    _configChat =
        ConfigChat.fromJson(value['configChat'] ?? DefaultConfig.configChat)
            .copyWith(realtimeChatConfig: realtimeChatConfig);

    _smartChat = ConfigurationUtils.loadSmartChat(
        List<Map>.from(value['smartChat'] ?? DefaultConfig.smartChat));
    _vendorConfig = VendorConfig.fromJson(
        value['vendorConfig'] ?? DefaultConfig.vendorConfig);
    final addressFieldsData = value['addressFields'];
    if (addressFieldsData is List && addressFieldsData.isNotEmpty) {
      _addressFields = [];
      for (var item in addressFieldsData) {
        final addressFieldConfig = AddressFieldConfig.fromMap(item);
        if (addressFieldConfig.type == AddressFieldType.unknown) {
          continue;
        }
        _addressFields.add(addressFieldConfig);
      }
      _addressFields.sort((a, b) => a.position.compareTo(b.position));
    } else {
      _addressFields = List.from(
        DefaultConfig.addressFields,
      );
    }
    _defaultCountryShipping =
        value['defaultCountryShipping'] ?? DefaultConfig.defaultCountryShipping;

    _loadingIcon = value['loadingIcon'] ?? DefaultConfig.loadingIcon;
    _productCard = value['productCard'] ?? DefaultConfig.productCard;
    _loginSMSConstants =
        value['loginSMSConstants'] ?? DefaultConfig.loginSMSConstants;
    _phoneNumberConfig = PhoneNumberConfig.fromJson(
        value['phoneNumberConfig'] ?? DefaultConfig.phoneNumberConfig);
    _darkConfig = value['darkConfig'] ?? DefaultConfig.darkConfig;
    _lightConfig = value['lightConfig'] ?? DefaultConfig.lightConfig;
    _version = value['version'] ?? DefaultConfig.version;
    _subGeneralSetting = ConfigurationUtils.loadSubGeneralSetting(
        value['subGeneralSetting'] ?? DefaultConfig.subGeneralSetting);
    _splashScreen = value['splashScreen'] ?? DefaultConfig.splashScreen;
    _colorOverrideConfig =
        value['colorOverrideConfig'] ?? DefaultConfig.colorOverrideConfig;

    _googleApiKey = value['googleApiKey'] == null
        ? DefaultConfig.googleApiKey
        : GoogleApiKeyConfig.fromMap(value['googleApiKey']);

    _managerConfig = value['managerConfig'];
    _deliveryConfig = value['deliveryConfig'];
    _salesiqConfig = value['salesiqConfig'];
    _shopifyPaymentConfig = value['shopifyPaymentConfig'];
    _openAIConfig = value['openAIConfig'];
    _notificationRequestScreen = value['notificationRequestScreen'];
    _reviewConfig = value['reviewConfig'];
    _boostEngine = value['boostEngine'];
    _multiSiteConfigs =
        value['multiSiteConfigs'] != null && value['multiSiteConfigs'] is List
            ? List.from(value['multiSiteConfigs'])
                .map((e) => MultiSiteConfig.fromJson(e))
                .toList()
            : null;
    _branchConfig = value['branchConfig'];
    _orderConfig = value['orderConfig'] != null
        ? OrderConfig.fromJson(value['orderConfig'])
        : _orderConfig;
    _outsideService = value['outsideService'];
    _dynamicLinkConfig = DynamicLinkConfig.fromJson({
      ...?value['dynamicLinkConfig'],
      'firebaseDynamicLinkConfig': _firebaseDynamicLinkConfig,
    });
  }

  void setAlwaysShowTabBar(bool value) {
    _advanceConfig['AlwaysShowTabBar'] = value;
  }

  void _mergeWithMap(Map<String, dynamic> value) {
    try {
      _environment = value['environment'] ?? _environment;
      _baseUrl = value['baseUrl'] ?? _baseUrl;
      _webProxy = value['webProxy'] ?? _webProxy;
      _appName = value['app_name'] ?? _appName;
      _maxTextScale =
          num.tryParse('${value['maxTextScale']}')?.toDouble() ?? _maxTextScale;
      _enableCrashAnalytics =
          value['enableCrashAnalytics'] ?? _enableCrashAnalytics;
      _enableRemoteConfigFirebase =
          value['enableRemoteConfigFirebase'] ?? _enableRemoteConfigFirebase;
      _enableFirebaseAnalytics =
          value['enableFirebaseAnalytics'] ?? _enableFirebaseAnalytics;
      _enableFacebookAppEvents =
          value['enableFacebookAppEvents'] ?? enableFacebookAppEvents;
      _defaultLanguage = value['defaultLanguage'] ?? _defaultLanguage;
      _appConfig = value['appConfig'] ?? _appConfig;
      serverConfig = value['serverConfig'] ?? serverConfig;
      _defaultDarkTheme = value['defaultDarkTheme'] ?? _defaultDarkTheme;
      _appRatingConfig = value['appRatingConfig'] is Map
          ? AppRatingConfig.fromMap(value['appRatingConfig'])
          : value['storeIdentifier'] is Map
              ? AppRatingConfig.fromMap(value['storeIdentifier'])
              : _appRatingConfig;
      _advanceConfig = value['advanceConfig'] != null
          ? Map.from(value['advanceConfig'])
          : _advanceConfig;
      _defaultSettings = value['defaultSettings'] ?? _defaultSettings;
      _loginSetting = value['loginSetting'] ?? _loginSetting;
      _defaultDrawer = value['defaultDrawer'] ?? _defaultDrawer;
      _oneSignalKey = value['oneSignalKey'] ?? _oneSignalKey;
      _onBoardingConfig = value['onBoardingConfig'] ?? _onBoardingConfig;
      _vendorOnBoardingData =
          value['vendorOnBoardingData'] ?? _vendorOnBoardingData;
      _productDetail = value['productDetail'] ?? _productDetail;
      _blogDetail = value['blogDetail'] ?? _blogDetail;
      _productVariantLayout =
          value['productVariantLayout'] ?? _productVariantLayout;
      _adConfig = value['adConfig'] ?? _adConfig;
      _firebaseDynamicLinkConfig =
          value['firebaseDynamicLinkConfig'] ?? _firebaseDynamicLinkConfig;
      _languagesInfo = List<Map>.from(value['languagesInfo'] ?? _languagesInfo);
      _paymentConfig = value['paymentConfig'] ?? _paymentConfig;
      _payments = value['payments'] ?? _payments;
      if (value['stripeConfig'] != null) {
        _stripeConfig = value['stripeConfig'];

        /// To support old paymentMethodId param
        if (_stripeConfig['paymentMethodId'] != null) {
          _stripeConfig['paymentMethodIds'] = [
            ...(_stripeConfig['paymentMethodIds'] ?? []),
            _stripeConfig['paymentMethodId']
          ];
        }
      }
      _paypalExpressConfig =
          value['paypalExpressConfig'] ?? _paypalExpressConfig;
      _razorpayConfig = value['razorpayConfig'] ?? _razorpayConfig;
      _tapConfig = value['tapConfig'] ?? _tapConfig;
      _payTmConfig = value['payTmConfig'] ?? _payTmConfig;
      _payStackConfig = value['payStackConfig'] ?? _payStackConfig;
      _flutterwaveConfig = value['flutterwaveConfig'] ?? _flutterwaveConfig;
      _myFatoorahConfig = value['myFatoorahConfig'] ?? _myFatoorahConfig;
      _midtransConfig = value['midtransConfig'] ?? _midtransConfig;
      _xenditConfig = value['xenditConfig'] ?? _xenditConfig;
      _expressPayConfig = value['expressPayConfig'] ?? expressPayConfig;
      _thaiPromptPayConfig =
          value['thaiPromptPayConfig'] ?? thaiPromptPayConfig;
      _fibConfig = value['fibConfig'] ?? fibConfig;
      _thawaniConfig = value['thawaniConfig'] ?? thawaniConfig;
      _mercadoPagoConfig = value['mercadoPagoConfig'] ?? _mercadoPagoConfig;
      _afterShip = value['afterShip'] ?? _afterShip;
      _productAddons = value['productAddons'] ?? _productAddons;
      _cartDetail = value['cartDetail'] ?? _cartDetail;
      _productVariantLanguage =
          value['productVariantLanguage'] ?? _productVariantLanguage;
      _saleOffProduct = value['saleOffProduct'] ?? _saleOffProduct;
      _excludedCategoryIDs = value['excludedCategoryIDs']?.toString() ??
          value['excludedCategory']?.toString();
      _excludedProductIDs = value['excludedProductIDs']?.toString();
      _notStrictVisibleVariant =
          value['notStrictVisibleVariant'] ?? _notStrictVisibleVariant;
      _configChat = value['configChat'] is Map
          ? ConfigChat.fromJson(value['configChat'])
          : _configChat;
      _smartChat = value['smartChat'] is List
          ? ConfigurationUtils.loadSmartChat(List<Map>.from(value['smartChat']))
          : _smartChat;
      _vendorConfig = value['vendorConfig'] is Map
          ? VendorConfig.fromJson(value['vendorConfig'])
          : _vendorConfig;
      final addressFieldsData = value['addressFields'];
      if (addressFieldsData is List && addressFieldsData.isNotEmpty) {
        _addressFields = [];
        for (var item in addressFieldsData) {
          final addressFieldConfig = AddressFieldConfig.fromMap(item);
          if (addressFieldConfig.type == AddressFieldType.unknown) {
            continue;
          }
          _addressFields.add(addressFieldConfig);
        }
        _addressFields.sort((a, b) => a.position.compareTo(b.position));
      }
      _defaultCountryShipping =
          value['defaultCountryShipping'] ?? _defaultCountryShipping;

      _loadingIcon = value['loadingIcon'] ?? _loadingIcon;
      _productCard = value['productCard'] ?? _productCard;
      _loginSMSConstants = value['loginSMSConstants'] ?? _loginSMSConstants;
      _phoneNumberConfig = value['phoneNumberConfig'] is Map
          ? PhoneNumberConfig.fromJson(value['phoneNumberConfig'])
          : _phoneNumberConfig;
      _darkConfig = value['darkConfig'] ?? _darkConfig;
      _lightConfig = value['lightConfig'] ?? _lightConfig;
      _version = value['version'] ?? _version;
      _subGeneralSetting = value['subGeneralSetting'] is Map
          ? ConfigurationUtils.loadSubGeneralSetting(value['subGeneralSetting'])
          : _subGeneralSetting;
      _splashScreen = value['splashScreen'] ?? _splashScreen;
      _colorOverrideConfig =
          value['colorOverrideConfig'] ?? _colorOverrideConfig;

      _googleApiKey = value['googleApiKey'] is Map
          ? GoogleApiKeyConfig.fromMap(value['googleApiKey'])
          : _googleApiKey;
      _managerConfig = value['managerConfig'] ?? _managerConfig;
      _deliveryConfig = value['deliveryConfig'] ?? _deliveryConfig;
      _salesiqConfig = value['salesiqConfig'] ?? _salesiqConfig;
      _openAIConfig = value['_openAIConfig'] ?? _openAIConfig;
      _shopifyPaymentConfig =
          value['shopifyPaymentConfig'] ?? _shopifyPaymentConfig;
      _notificationRequestScreen =
          value['notificationRequestScreen'] ?? _notificationRequestScreen;
      _reviewConfig = value['reviewConfig'] ?? _reviewConfig;
      _boostEngine = value['boostEngine'] ?? _boostEngine;
      _multiSiteConfigs =
          value['multiSiteConfigs'] != null && value['multiSiteConfigs'] is List
              ? List.from(value['multiSiteConfigs'])
                  .map((e) => MultiSiteConfig.fromJson(e))
                  .toList()
              : _multiSiteConfigs;
      if (_multiSiteConfigs?.isNotEmpty ?? false) {
        serverConfig = _multiSiteConfigs!.first.serverConfig!;
      }
      _orderConfig = value['orderConfig'] != null
          ? OrderConfig.fromJson(value['orderConfig'])
          : _orderConfig;
      _outsideService = value['outsideService'] ?? _outsideService;
      _dynamicLinkConfig = DynamicLinkConfig.fromJson({
        ...?value['dynamicLinkConfig'],
        'firebaseDynamicLinkConfig': _firebaseDynamicLinkConfig,
      });
    } catch (e) {
      rethrow;
    }
  }

  void _loadDesignConfig() {
    final data = Services().firebase.getRemoteConfigString('layout_design');
    if (data.isNotEmpty) {
      _layoutDesign = Map<String, dynamic>.from(jsonDecode(data));
    }
  }
}

extension ConfigurationsFireBaseRemoteConfig on Configurations {
  Future<void> loadRemoteConfig() async {
    if (Configurations.enableRemoteConfigFirebase) {
      final isAvailable = await Services().firebase.loadRemoteConfig();
      if (isAvailable) {
        _loadDesignConfig();
        var configurations = <String, dynamic>{};
        var keys = await Services().firebase.getRemoteKeys();
        for (var item in keys) {
          var data = Services().firebase.getRemoteConfigString(item);
          if (data.isNotEmpty) {
            var dataJson;
            try {
              dataJson = jsonDecode(data);
            } catch (e) {
              dataJson = data;
            }
            configurations[item] = dataJson;
          }
        }
        _mergeWithMap(configurations);
      }
    }
  }
}
