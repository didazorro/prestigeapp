part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial(
    List<StoreProduct> products,
  ) = _Initial;

  const factory SubscriptionState.getStoreProductsLoading(
    List<StoreProduct> products,
  ) = _GetStoreProductsLoading;

  const factory SubscriptionState.loading(
    List<StoreProduct> products,
  ) = _Loading;

  const factory SubscriptionState.getStoreProductsSuccess(
    List<StoreProduct> products,
  ) = _GetStoreProductsSuccess;

  const factory SubscriptionState.getStoreProductsFailed(
    List<StoreProduct> products, {
    required String message,
  }) = _GetStoreProductsFailed;

  const factory SubscriptionState.purchaseProductSuccess(
    List<StoreProduct> products,
    StoreProduct purchasedProduct,
  ) = _PurchaseProductSuccess;

  const factory SubscriptionState.purchaseProductFailure(
    List<StoreProduct> products, {
    required String message,
  }) = _PurchaseProductFailure;

  const factory SubscriptionState.purchaseProductLoading(
    List<StoreProduct> products,
  ) = _PurchaseProductLoading;

  const factory SubscriptionState.purchaseProductCancel(
    List<StoreProduct> products,
  ) = _PurchaseProductCancel;
}
