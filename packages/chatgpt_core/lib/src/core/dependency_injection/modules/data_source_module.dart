import 'dart:io' show Platform;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../../data/datasource/local/app_storage.dart';
import '../../../data/models/chat/chat_model_hive.dart';
import '../../../data/models/message/message_model_hive.dart';
import '../../app_core_factory.dart';
import '../../components/configurations/configurations.dart';
import '../../components/constants/hive_constant.dart';
import '../../components/constants/name_key.dart';
import '../../services/device_service.dart';

const String _hiveBoxName = 'cached';

@module
abstract class DataSourceModule {
  @prod
  Dio dioProd(AppStorage appStorage) => AppCoreFactory.createDio(
        Configurations.baseUrl,
        appStorage,
      );
}

@module
abstract class HiveModule {
  @preResolve
  @singleton
  Future<HiveInterface> initHive() async {
    await Hive.initFlutter();

    Hive.registerAdapter(MessageModelHiveAdapter());
    Hive.registerAdapter(ChatModelHiveAdapter());

    await Hive.openBox<dynamic>(_hiveBoxName);
    await Hive.openBox<ChatModelHive>(HiveConstant.chatBoxName);
    await Hive.openBox<MessageModelHive>(HiveConstant.messageBoxName);

    return Hive;
  }

  @singleton
  Box prefs(HiveInterface hive) {
    return hive.box(_hiveBoxName);
  }

  @singleton
  Box<ChatModelHive> chatBox(HiveInterface hive) {
    return hive.box(HiveConstant.chatBoxName);
  }

  @singleton
  Box<MessageModelHive> messageBox(HiveInterface hive) {
    return hive.box(HiveConstant.messageBoxName);
  }
}

// @module
// abstract class SupabaseModule {
//   @Named('BaseUrl')
//   @singleton
//   String get baseUrl => Configurations.baseUrl;
//
//   @Named('AnonKey')
//   @singleton
//   String get anonKey => Configurations.anonKey;
//
//   @preResolve
//   @singleton
//   Future<Supabase> initSupabase(
//     @Named('BaseUrl') String baseUrl,
//     @Named('AnonKey') String anonKey,
//   ) async {
//     final supabase = await Supabase.initialize(
//       url: baseUrl,
//       anonKey: anonKey,
//     );
//
//     return supabase;
//   }
//
//   @singleton
//   SupabaseClient supabaseClient(Supabase supabase) {
//     return supabase.client;
//   }
// }

@module
abstract class PurchaseModule {
  @Named('RevenueApiKey')
  @singleton
  String get revenueApiKey => isIOS
      ? Configurations.revenueAppleApiKey
      : Configurations.revenueGoogleApiKey;

  @Named('RevenueProducts')
  @singleton
  List<String> get revenueProducts => isIOS
      ? Configurations.revenueProductsIos
      : Configurations.revenueProductsAndroid;

  @preResolve
  @singleton
  Future<Purchases> prefs(
    @Named('RevenueApiKey') String revenueApiKey,
  ) async {
    if (kIsWeb || Platform.isWindows) return Purchases();

    if (revenueApiKey.isNotEmpty) {
      final config = PurchasesConfiguration(revenueApiKey);

      await Purchases.configure(config);
    }

    return Purchases();
  }
}

@module
abstract class ActiveConfigModule {
  @Named(NameKey.enableSubscription)
  @singleton
  bool get enableSubscription => Configurations.enableSubscription;

  @Named(NameKey.enableInputKey)
  @singleton
  bool get enableInputKey => Configurations.enableInputKey;
}
