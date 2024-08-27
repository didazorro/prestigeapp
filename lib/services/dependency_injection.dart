// import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:openai/openai.dart';

// Enable Audio feature
// import 'package:flux_audio/index.dart';

import 'index.dart' show AudioManager, NotificationService, Services;
import 'location_service.dart';
import 'wallet/wallet_services.dart';
import 'wallet/wallet_services_impl.dart';

GetIt injector = GetIt.instance;

class DependencyInjection {
  static Future<void> inject() async {
    injector.allowReassignment = true;
    final locationService = LocationService();
    injector.registerSingleton<LocationService>(locationService);

    var notificationService = Services.getNotificationService();
    injector.registerSingleton<NotificationService>(notificationService);

    /// Enable Audio feature
    // if (kBlogDetail['enableAudioSupport'] ?? false) {
    //   injector.registerSingleton<AudioHandler>(await initAudioService());
    // }
    var audioService = Services().getAudioService();
    injector.registerLazySingleton<AudioManager>(() => audioService);

    /// Wallet services
    injector.registerLazySingleton<WalletServices>(WalletServicesImpl.new);

    /// App Coordinator
    injector.registerFactoryParam<AppCoordinatorShared, BuildContext, dynamic>(
        (param1, _) => AppCoordinatorSharedImpl(param1));
  }
}

/// control the OpenAI Key feature
class AppCoordinatorSharedImpl<T> extends AppCoordinatorShared<T> {
  final BuildContext context;
  AppCoordinatorSharedImpl(this.context);

  @override
  Future<T?> showOpenAiKey([String? identifier]) =>
      context.showInputOpenAiKey(identifier) as Future<T?>;
}

extension AppCoordinator<T> on BuildContext {
  AppCoordinatorShared<T> get shared => injector.get(param1: this);

  Future<T?> showOpenAiKey([String? identifier]) => shared.showOpenAiKey();
}

abstract class AppCoordinatorShared<T> {
  Future<T?> showOpenAiKey([String? identifier]) async => null;
}
