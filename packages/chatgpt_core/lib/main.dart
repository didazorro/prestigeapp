import 'package:flutter/foundation.dart';

import 'src/app_delegate.dart';
import 'src/core/components/configurations/env/env_prod.dart';

void main() {
  environmentProd.addAll({'isStudio': false || kDebugMode});

  AppDelegate().run(environmentProd);
}
