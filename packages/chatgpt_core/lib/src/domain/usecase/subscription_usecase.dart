import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

const _entitlementId = 'Pro';

@singleton
class SubscriptionUsecase {
  SubscriptionUsecase(
    @Named('RevenueProducts') this._products,
  );

  final List<String> _products;

  Future<List<StoreProduct>> getProducts() {
    return Purchases.getProducts(_products);
  }

  Future<CustomerInfo> getCustomerInfo() {
    return Purchases.getCustomerInfo();
  }

  Future<bool> isExpired([String? identifier]) async {
    // return true;
    var customerInfo = await getCustomerInfo();

    if (identifier != null) {
      if (customerInfo.originalAppUserId != identifier) {
        final result = await Purchases.logIn(identifier);
        customerInfo = result.customerInfo;
      }
    } else {
      final isAnonymous = await Purchases.isAnonymous;
      if (!isAnonymous) {
        await Purchases.logOut();

        return true;
      }
    }

    final entitlement = customerInfo.entitlements.all[_entitlementId];
    if (entitlement == null) {
      return true;
    }
    final expirationDate = entitlement.expirationDate;
    if (expirationDate == null) {
      return true;
    }
    final dateExpire = DateTime.parse(expirationDate);
    final isActive = dateExpire.isAfter(DateTime.now());

    return !isActive;
  }

  Future<DateTime?> getExpirationDate([String? identifier]) async {
    // return true;
    var customerInfo = await getCustomerInfo();

    if (identifier != null) {
      if (customerInfo.originalAppUserId != identifier) {
        final result = await Purchases.logIn(identifier);
        customerInfo = result.customerInfo;
      }
    } else {
      final isAnonymous = await Purchases.isAnonymous;
      if (!isAnonymous) {
        await Purchases.logOut();

        return null;
      }
    }

    final entitlement = customerInfo.entitlements.all[_entitlementId];
    if (entitlement == null) {
      return null;
    }
    final expirationDate = entitlement.expirationDate;
    if (expirationDate == null) {
      return null;
    }
    final dateExpire = DateTime.parse(expirationDate);

    return dateExpire;
  }

  Future<bool> isActivated([String? identifier]) async {
    return !await isExpired(identifier);
  }

  Future<CustomerInfo> purchaseProduct(StoreProduct product) {
    return Purchases.purchaseStoreProduct(product);
  }

// Future<Subscription> createSubscription(Subscription subscription) async {
//   return await _subscriptionRepository.createSubscription(subscription);
// }
//
// Future<Subscription> updateSubscription(Subscription subscription) async {
//   return await _subscriptionRepository.updateSubscription(subscription);
// }
//
// Future<Subscription> deleteSubscription(Subscription subscription) async {
//   return await _subscriptionRepository.deleteSubscription(subscription);
// }
}
