import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/models/store_product_wrapper.dart';

import '../../../../domain/usecase/subscription_usecase.dart';

part 'subscription_event.dart';

part 'subscription_state.dart';

part 'subscription_bloc.freezed.dart';

@injectable
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final SubscriptionUsecase _subscriptionUsecase;

  SubscriptionBloc(this._subscriptionUsecase)
      : super(const SubscriptionState.initial([])) {
    on<_GetProducts>(_onGetProducts);
    on<_PurchaseProduct>(_onPurchaseProduct);
  }

  FutureOr<void> _onGetProducts(
    _GetProducts event,
    Emitter<SubscriptionState> emit,
  ) async {
    emit(const SubscriptionState.loading([]));

    final products = await _subscriptionUsecase.getProducts();

    emit(SubscriptionState.getStoreProductsSuccess(products));
  }

  FutureOr<void> _onPurchaseProduct(
    _PurchaseProduct event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(SubscriptionState.purchaseProductLoading(state.products));

      final customerInfo =
          await _subscriptionUsecase.purchaseProduct(event.storeProduct);

      if (customerInfo.entitlements.all['Pro']?.isActive ?? false) {
        emit(SubscriptionState.purchaseProductSuccess(
          state.products,
          event.storeProduct,
        ));

        return;
      }

      emit(SubscriptionState.purchaseProductFailure(
        state.products,
        message: 'Purchase failed',
      ));
    } catch (e) {
      emit(SubscriptionState.purchaseProductCancel(state.products));
    }
  }
}
