class IconConstants {
  // Bottom Navigation
  static String home = _IconApp.home.path;
  static String store = _IconApp.store.path;
  static String ticket = _IconApp.ticket.path;
  static String gear = _IconApp.gear.path;
  static String clipboard = _IconApp.clipboard.path;
  static String incoming = _IconApp.incoming.path;
  static String check = _IconApp.check.path;
  static String star = _IconApp.star.path;
  static String mic = _IconApp.mic.path;
  static String magic = _IconApp.magic.path;
  static String storm = _IconApp.storm.path;
  static String ai = _IconApp.ai.path;
}

enum _IconApp {
  home('assets/icons/home.svg'),
  store('assets/icons/store.png'),
  ticket('assets/icons/ticket.png'),
  gear('assets/icons/gear.png'),
  clipboard('assets/icons/clipboard.png'),
  incoming('assets/icons/incoming.png'),
  check('assets/icons/check.png'),
  star('assets/icons/star.png'),
  mic('assets/icons/mic.png'),
  magic('assets/icons/magic.png'),
  storm('assets/icons/storm.png'),
  ai('assets/icons/ai.png'),
  ;

  const _IconApp(this.path);

  final String path;
}
