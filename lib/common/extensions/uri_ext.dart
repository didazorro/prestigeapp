import 'package:flutter/foundation.dart';

import '../config.dart';

extension UriExt on Uri {
  Uri addProxy([String? webProxy]) {
    var uri = this;
    var url = '$uri';

    if (kIsWeb) {
      var proxy = Configurations.webProxy;
      if (webProxy?.isNotEmpty ?? false) {
        proxy = webProxy!;
      }

      if (url.contains(proxy) == false) {
        url = url.replaceAll('https://', '').replaceAll('http://', '');
        final proxyURL = '$proxy$url';

        uri = Uri.parse(proxyURL);
      }
    }

    return uri;
  }
}
