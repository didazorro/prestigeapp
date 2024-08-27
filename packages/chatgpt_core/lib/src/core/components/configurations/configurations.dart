import 'default_env.dart';

class Configurations {
  static String _name = DefaultEnv.name;
  static String _environment = DefaultEnv.environment;
  static String _baseUrl = DefaultEnv.baseUrl;
  static String _anonKey = DefaultEnv.anonKey;
  static String _revenueAppleApiKey = DefaultEnv.revenueAppleApiKey;
  static String _revenueGoogleApiKey = DefaultEnv.revenueGoogleApiKey;
  static List<String> _revenueProductsIos = DefaultEnv.revenueProductsIos;
  static List<String> _revenueProductsAndroid =
      DefaultEnv.revenueProductsAndroid;
  static bool _enableSubscription = DefaultEnv.enableSubscription;
  static bool _enableInputKey = DefaultEnv.enableInputKey;

  void setConfigurationValues(Map<String, dynamic> value) {
    _name = value['name'] ?? DefaultEnv.name;
    _environment = value['environment'] ?? DefaultEnv.environment;
    _baseUrl = value['baseUrl'] ?? DefaultEnv.baseUrl;
    _anonKey = value['anonKey'] ?? DefaultEnv.anonKey;
    _revenueAppleApiKey =
        value['revenueAppleApiKey'] ?? DefaultEnv.revenueAppleApiKey;
    _revenueGoogleApiKey =
        value['revenueGoogleApiKey'] ?? DefaultEnv.revenueGoogleApiKey;
    _revenueProductsIos =
        value['revenueProductsIos'] ?? DefaultEnv.revenueProductsIos;
    _revenueProductsAndroid =
        value['revenueProductsAndroid'] ?? DefaultEnv.revenueProductsAndroid;
    _enableSubscription =
        value['enableSubscription'] ?? DefaultEnv.enableSubscription;
    _enableInputKey = value['enableInputKey'] ?? DefaultEnv.enableInputKey;
  }

  static String get name => _name;

  static String get environment => _environment;

  static String get baseUrl => _baseUrl;

  static String get anonKey => _anonKey;

  static String get revenueAppleApiKey => _revenueAppleApiKey;

  static String get revenueGoogleApiKey => _revenueGoogleApiKey;

  static List<String> get revenueProductsIos => _revenueProductsIos;

  static List<String> get revenueProductsAndroid => _revenueProductsAndroid;

  static bool get enableSubscription => _enableSubscription;

  static bool get enableInputKey => _enableInputKey;

  static bool get isStudio => _name == DefaultEnv.name;
}
