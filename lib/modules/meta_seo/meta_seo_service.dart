import 'package:meta_seo/meta_seo.dart';

import '../../common/constants.dart';
import '../../models/entities/seo/meta_seo.dart';

class MetaSeoService {
  static final MetaSeoService _instance = MetaSeoService._internal();
  factory MetaSeoService() => _instance;
  MetaSeoService._internal();

  static final MetaSEO _metaSEO = MetaSEO();
  static void config() => _metaSEO.config();
  MetaSEO get meta => _metaSEO;

  void updateMeta(String? routeName, MetaSeoConfig? config) {
    if (routeName?.isNotEmpty ?? false) {
      if (kIsWeb) {
        config?.addMeta(MetaSeoService(), routeName!);
      }
    }
  }
}
