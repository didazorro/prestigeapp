class DefaultEnv {
  static const String name = 'studio';
  static const String environment = 'dev';
  static const String baseUrl = 'baseUrl';
  static const String anonKey = 'anonKey';
  static const String revenueAppleApiKey = 'appleApiKey';
  static const String revenueGoogleApiKey = 'googleApiKey';
  static const List<String> revenueProductsIos = [
    'com.example.product1',
    'com.example.product2',
  ];
  static const List<String> revenueProductsAndroid = [
    'com.example.product1',
    'com.example.product2',
  ];

  static bool enableSubscription = false;
  static bool enableInputKey = false;
}
