// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i18;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:purchases_flutter/purchases_flutter.dart' as _i13;

import '../../data/datasource/local/app_storage.dart' as _i16;
import '../../data/datasource/local/impl/app_storage_impl.dart' as _i17;
import '../../data/datasource/remote/supabase_api.dart' as _i24;
import '../../data/models/chat/chat_model_hive.dart' as _i11;
import '../../data/models/message/message_model_hive.dart' as _i12;
import '../../data/repositories/chat_repository_impl.dart' as _i32;
import '../../data/repositories/dashboard_repository_impl.dart' as _i10;
import '../../data/repositories/image_generate_repository_impl.dart' as _i28;
import '../../data/repositories/prompt_repository_impl.dart' as _i26;
import '../../data/repositories/text_generate_repository_impl.dart' as _i35;
import '../../data/repositories/user_storage_repository_impl.dart' as _i21;
import '../../domain/repositories/chat_repository.dart' as _i31;
import '../../domain/repositories/dashboard_repository.dart' as _i9;
import '../../domain/repositories/image_generate_repository.dart' as _i27;
import '../../domain/repositories/prompt_repository.dart' as _i25;
import '../../domain/repositories/text_generate_repository.dart' as _i34;
import '../../domain/repositories/user_storage_repository.dart' as _i20;
import '../../domain/usecase/chat_usecase.dart' as _i41;
import '../../domain/usecase/dashboard_configuration_usecase.dart' as _i15;
import '../../domain/usecase/feature_permission_usecase.dart' as _i39;
import '../../domain/usecase/image_generate_usecase.dart' as _i38;
import '../../domain/usecase/limit_image_generate_usecase.dart' as _i33;
import '../../domain/usecase/prompt_usecase.dart' as _i29;
import '../../domain/usecase/subscription_usecase.dart' as _i14;
import '../../domain/usecase/text_generate_usecase.dart' as _i37;
import '../../domain/usecase/user_storage_usecase.dart' as _i23;
import '../../presentations/chat/bloc/chat_bloc.dart' as _i43;
import '../../presentations/chat_detail/bloc/chat_detail_bloc.dart' as _i42;
import '../../presentations/dashboard_screen/bloc/dashboard_bloc.dart' as _i36;
import '../../presentations/manage_key/bloc/manage_key_bloc.dart' as _i40;
import '../../presentations/prompt/bloc/prompt_bloc.dart' as _i30;
import '../../presentations/shared/app_settings/bloc/app_settings_bloc.dart'
    as _i8;
import '../../presentations/shared/subscriptions/bloc/subscription_bloc.dart'
    as _i19;
import '../services/device_service.dart' as _i4;
import '../services/logger_service.dart' as _i6;
import '../services/speech_text_service.dart' as _i3;
import '../services/text_speech_service.dart' as _i5;
import 'modules/data_source_module.dart' as _i44;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final hiveModule = _$HiveModule();
  final activeConfigModule = _$ActiveConfigModule();
  final purchaseModule = _$PurchaseModule();
  final dataSourceModule = _$DataSourceModule();
  gh.factory<_i3.SpeechTextService>(() => _i3.SpeechTextService());
  gh.factory<_i4.DeviceService>(() => _i4.DeviceService());
  gh.factory<_i5.TextSpeechService>(() => _i5.TextSpeechService());
  gh.factory<_i6.LoggerService>(() => _i6.LoggerService());
  await gh.singletonAsync<_i7.HiveInterface>(
    () => hiveModule.initHive(),
    preResolve: true,
  );
  gh.singleton<_i8.AppSettingsBloc>(() => _i8.AppSettingsBloc());
  gh.factory<_i9.DashboardRepository>(() => _i10.DashboardRepositoryImpl());
  gh.singleton<bool>(
    () => activeConfigModule.enableInputKey,
    instanceName: 'enableInputKey',
  );
  gh.singleton<List<String>>(
    () => purchaseModule.revenueProducts,
    instanceName: 'RevenueProducts',
  );
  gh.singleton<String>(
    () => purchaseModule.revenueApiKey,
    instanceName: 'RevenueApiKey',
  );
  gh.singleton<bool>(
    () => activeConfigModule.enableSubscription,
    instanceName: 'enableSubscription',
  );
  gh.singleton<_i7.Box<dynamic>>(
      () => hiveModule.prefs(gh<_i7.HiveInterface>()));
  gh.singleton<_i7.Box<_i11.ChatModelHive>>(
      () => hiveModule.chatBox(gh<_i7.HiveInterface>()));
  gh.singleton<_i7.Box<_i12.MessageModelHive>>(
      () => hiveModule.messageBox(gh<_i7.HiveInterface>()));
  await gh.singletonAsync<_i13.Purchases>(
    () => purchaseModule.prefs(gh<String>(instanceName: 'RevenueApiKey')),
    preResolve: true,
  );
  gh.singleton<_i14.SubscriptionUsecase>(() => _i14.SubscriptionUsecase(
      gh<List<String>>(instanceName: 'RevenueProducts')));
  gh.factory<_i15.DashboardConfigurationUsecase>(
      () => _i15.DashboardConfigurationUsecase(gh<_i9.DashboardRepository>()));
  gh.singleton<_i16.AppStorage>(
      () => _i17.AppStorageImpl(gh<_i18.Box<dynamic>>()));
  gh.factory<_i19.SubscriptionBloc>(
      () => _i19.SubscriptionBloc(gh<_i14.SubscriptionUsecase>()));
  gh.factory<_i20.UserStorageRepository>(
      () => _i21.UserStorageRepositoryImpl(gh<_i16.AppStorage>()));
  gh.factory<_i22.Dio>(
    () => dataSourceModule.dioProd(gh<_i16.AppStorage>()),
    registerFor: {_prod},
  );
  gh.factory<_i23.UserStorageUsecase>(
      () => _i23.UserStorageUsecase(gh<_i20.UserStorageRepository>()));
  gh.factory<_i24.SupabaseApi>(() => _i24.SupabaseApi(gh<_i22.Dio>()));
  gh.factory<_i25.PromptRepository>(
      () => _i26.PromptRepositoryImpl(gh<_i24.SupabaseApi>()));
  gh.factory<_i27.ImageGenerateRepository>(
      () => _i28.ImageGenerateRepositoryImpl(gh<_i24.SupabaseApi>()));
  gh.factory<_i29.PromptUsecase>(
      () => _i29.PromptUsecase(gh<_i25.PromptRepository>()));
  gh.factory<_i30.PromptBloc>(() => _i30.PromptBloc(gh<_i29.PromptUsecase>()));
  gh.factory<_i31.ChatRepository>(() => _i32.ChatRepositoryImpl(
        gh<_i18.Box<_i11.ChatModelHive>>(),
        gh<_i24.SupabaseApi>(),
      ));
  gh.factory<_i33.LimitImageGenerateUsecase>(
      () => _i33.LimitImageGenerateUsecase(gh<_i23.UserStorageUsecase>()));
  gh.factory<_i34.TextGenerateRepository>(
      () => _i35.TextGenerateRepositoryImpl(gh<_i24.SupabaseApi>()));
  gh.factory<_i36.DashboardBloc>(() => _i36.DashboardBloc(
        gh<_i15.DashboardConfigurationUsecase>(),
        gh<_i23.UserStorageUsecase>(),
      ));
  gh.factory<_i37.TextGenerateUsecase>(
      () => _i37.TextGenerateUsecase(gh<_i34.TextGenerateRepository>()));
  gh.factory<_i38.ImageGenerateUseCase>(
      () => _i38.ImageGenerateUseCase(gh<_i27.ImageGenerateRepository>()));
  gh.factory<_i39.FeaturePermissionUseCase>(() => _i39.FeaturePermissionUseCase(
        gh<_i14.SubscriptionUsecase>(),
        gh<_i23.UserStorageUsecase>(),
        gh<bool>(instanceName: 'enableSubscription'),
        gh<bool>(instanceName: 'enableInputKey'),
      ));
  gh.factoryParam<_i40.ManageKeyBloc, String?, dynamic>((
    identifier,
    _,
  ) =>
      _i40.ManageKeyBloc(
        identifier,
        gh<_i23.UserStorageUsecase>(),
        gh<_i37.TextGenerateUsecase>(),
      ));
  gh.factory<_i41.ChatUsecase>(
      () => _i41.ChatUsecase(gh<_i31.ChatRepository>()));
  gh.factoryParam<_i42.ChatDetailBloc, int, dynamic>((
    chatId,
    _,
  ) =>
      _i42.ChatDetailBloc(
        chatId,
        gh<_i41.ChatUsecase>(),
        gh<_i5.TextSpeechService>(),
        gh<_i3.SpeechTextService>(),
      ));
  gh.factoryParam<_i43.ChatBloc, String?, dynamic>((
    identifier,
    _,
  ) =>
      _i43.ChatBloc(
        identifier,
        gh<_i41.ChatUsecase>(),
        gh<_i39.FeaturePermissionUseCase>(),
      ));
  return getIt;
}

class _$HiveModule extends _i44.HiveModule {}

class _$ActiveConfigModule extends _i44.ActiveConfigModule {}

class _$PurchaseModule extends _i44.PurchaseModule {}

class _$DataSourceModule extends _i44.DataSourceModule {}
