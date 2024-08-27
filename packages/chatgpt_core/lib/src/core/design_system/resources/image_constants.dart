class ImageConstants {
  // Bottom Navigation
  static String home = ImageApp.home.path;
}

enum ImageApp {
  //modules/design_system/assets/icons/home.svg
  home('assets/icons/bottom_bar/home.svg'),
  ;

  const ImageApp(this.path);

  final String path;
}
