import 'package:injectable/injectable.dart';

import 'core/components/configurations/configurations.dart';
import 'core/dependency_injection/di.dart';

class OpenaiAppFactory {
  static Future<void> initialized(Map<String, dynamic> config) async {
    Configurations().setConfigurationValues(config);
    await configureDependencies(environment: Environment.prod);
  }
}
