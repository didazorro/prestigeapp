class AppBarWebControlDelegate {
  static void emitRoute(String? route) {
    _routeName = route;
  }

  static AppBarWebControlDelegate? _instance;

  static String? _routeName;
  static String? get routeName => _routeName;

  factory AppBarWebControlDelegate() {
    return _instance ??= AppBarWebControlDelegate._();
  }

  AppBarWebControlDelegate._();
}
