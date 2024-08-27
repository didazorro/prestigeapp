part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.started() = _Started;

  const factory SubscriptionEvent.getProducts() = _GetProducts;

  const factory SubscriptionEvent.purchaseProduct(StoreProduct storeProduct) =
      _PurchaseProduct;
}
