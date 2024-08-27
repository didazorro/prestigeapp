import 'package:injectable/injectable.dart';

import '../../core/components/constants/name_key.dart';
import 'subscription_usecase.dart';
import 'user_storage_usecase.dart';

@injectable
class FeaturePermissionUseCase {
  final SubscriptionUsecase _subscriptionUsecase;
  final UserStorageUsecase _userStorageUsecase;
  final bool _enableSubscription;
  final bool _enableInputKey;

  FeaturePermissionUseCase(
    this._subscriptionUsecase,
    this._userStorageUsecase,
    @Named(NameKey.enableSubscription) this._enableSubscription,
    @Named(NameKey.enableInputKey) this._enableInputKey,
  );

  Future<bool> isPro([String? identifier]) async {
    if (!_enableSubscription && _enableInputKey == false) {
      return true;
    }

    if (_enableInputKey) {
      final openAiKey = _userStorageUsecase.getOpenAiKey();

      if (openAiKey != null) {
        return true;
      }
    }

    if (_enableSubscription) {
      return await _subscriptionUsecase.isActivated(identifier);
    }

    return false;
  }

  // Future<bool> isExpired() async {
  //   return await _subscriptionUsecase.isExpired();
  // }

  Future<bool> isFree() async {
    return !(await isPro());
  }
}
