// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(StoreProduct storeProduct) purchaseProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(StoreProduct storeProduct)? purchaseProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(StoreProduct storeProduct)? purchaseProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_PurchaseProduct value) purchaseProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_PurchaseProduct value)? purchaseProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_PurchaseProduct value)? purchaseProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(StoreProduct storeProduct) purchaseProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(StoreProduct storeProduct)? purchaseProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(StoreProduct storeProduct)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_PurchaseProduct value) purchaseProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_PurchaseProduct value)? purchaseProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_PurchaseProduct value)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SubscriptionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(StoreProduct storeProduct) purchaseProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(StoreProduct storeProduct)? purchaseProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(StoreProduct storeProduct)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_PurchaseProduct value) purchaseProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_PurchaseProduct value)? purchaseProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_PurchaseProduct value)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements SubscriptionEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$PurchaseProductImplCopyWith<$Res> {
  factory _$$PurchaseProductImplCopyWith(_$PurchaseProductImpl value,
          $Res Function(_$PurchaseProductImpl) then) =
      __$$PurchaseProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreProduct storeProduct});

  $StoreProductCopyWith<$Res> get storeProduct;
}

/// @nodoc
class __$$PurchaseProductImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$PurchaseProductImpl>
    implements _$$PurchaseProductImplCopyWith<$Res> {
  __$$PurchaseProductImplCopyWithImpl(
      _$PurchaseProductImpl _value, $Res Function(_$PurchaseProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeProduct = null,
  }) {
    return _then(_$PurchaseProductImpl(
      null == storeProduct
          ? _value.storeProduct
          : storeProduct // ignore: cast_nullable_to_non_nullable
              as StoreProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res> get storeProduct {
    return $StoreProductCopyWith<$Res>(_value.storeProduct, (value) {
      return _then(_value.copyWith(storeProduct: value));
    });
  }
}

/// @nodoc

class _$PurchaseProductImpl implements _PurchaseProduct {
  const _$PurchaseProductImpl(this.storeProduct);

  @override
  final StoreProduct storeProduct;

  @override
  String toString() {
    return 'SubscriptionEvent.purchaseProduct(storeProduct: $storeProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseProductImpl &&
            (identical(other.storeProduct, storeProduct) ||
                other.storeProduct == storeProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseProductImplCopyWith<_$PurchaseProductImpl> get copyWith =>
      __$$PurchaseProductImplCopyWithImpl<_$PurchaseProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(StoreProduct storeProduct) purchaseProduct,
  }) {
    return purchaseProduct(storeProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(StoreProduct storeProduct)? purchaseProduct,
  }) {
    return purchaseProduct?.call(storeProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(StoreProduct storeProduct)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (purchaseProduct != null) {
      return purchaseProduct(storeProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_PurchaseProduct value) purchaseProduct,
  }) {
    return purchaseProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_PurchaseProduct value)? purchaseProduct,
  }) {
    return purchaseProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_PurchaseProduct value)? purchaseProduct,
    required TResult orElse(),
  }) {
    if (purchaseProduct != null) {
      return purchaseProduct(this);
    }
    return orElse();
  }
}

abstract class _PurchaseProduct implements SubscriptionEvent {
  const factory _PurchaseProduct(final StoreProduct storeProduct) =
      _$PurchaseProductImpl;

  StoreProduct get storeProduct;
  @JsonKey(ignore: true)
  _$$PurchaseProductImplCopyWith<_$PurchaseProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionState {
  List<StoreProduct> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$InitialImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(final List<StoreProduct> products) : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.initial(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return initial(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return initial?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionState {
  const factory _Initial(final List<StoreProduct> products) = _$InitialImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStoreProductsLoadingImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$GetStoreProductsLoadingImplCopyWith(
          _$GetStoreProductsLoadingImpl value,
          $Res Function(_$GetStoreProductsLoadingImpl) then) =
      __$$GetStoreProductsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$GetStoreProductsLoadingImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$GetStoreProductsLoadingImpl>
    implements _$$GetStoreProductsLoadingImplCopyWith<$Res> {
  __$$GetStoreProductsLoadingImplCopyWithImpl(
      _$GetStoreProductsLoadingImpl _value,
      $Res Function(_$GetStoreProductsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$GetStoreProductsLoadingImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$GetStoreProductsLoadingImpl implements _GetStoreProductsLoading {
  const _$GetStoreProductsLoadingImpl(final List<StoreProduct> products)
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.getStoreProductsLoading(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreProductsLoadingImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreProductsLoadingImplCopyWith<_$GetStoreProductsLoadingImpl>
      get copyWith => __$$GetStoreProductsLoadingImplCopyWithImpl<
          _$GetStoreProductsLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return getStoreProductsLoading(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return getStoreProductsLoading?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsLoading != null) {
      return getStoreProductsLoading(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return getStoreProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return getStoreProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsLoading != null) {
      return getStoreProductsLoading(this);
    }
    return orElse();
  }
}

abstract class _GetStoreProductsLoading implements SubscriptionState {
  const factory _GetStoreProductsLoading(final List<StoreProduct> products) =
      _$GetStoreProductsLoadingImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreProductsLoadingImplCopyWith<_$GetStoreProductsLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$LoadingImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(final List<StoreProduct> products) : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.loading(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return loading(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return loading?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SubscriptionState {
  const factory _Loading(final List<StoreProduct> products) = _$LoadingImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStoreProductsSuccessImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$GetStoreProductsSuccessImplCopyWith(
          _$GetStoreProductsSuccessImpl value,
          $Res Function(_$GetStoreProductsSuccessImpl) then) =
      __$$GetStoreProductsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$GetStoreProductsSuccessImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$GetStoreProductsSuccessImpl>
    implements _$$GetStoreProductsSuccessImplCopyWith<$Res> {
  __$$GetStoreProductsSuccessImplCopyWithImpl(
      _$GetStoreProductsSuccessImpl _value,
      $Res Function(_$GetStoreProductsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$GetStoreProductsSuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$GetStoreProductsSuccessImpl implements _GetStoreProductsSuccess {
  const _$GetStoreProductsSuccessImpl(final List<StoreProduct> products)
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.getStoreProductsSuccess(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreProductsSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreProductsSuccessImplCopyWith<_$GetStoreProductsSuccessImpl>
      get copyWith => __$$GetStoreProductsSuccessImplCopyWithImpl<
          _$GetStoreProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return getStoreProductsSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return getStoreProductsSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsSuccess != null) {
      return getStoreProductsSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return getStoreProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return getStoreProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsSuccess != null) {
      return getStoreProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetStoreProductsSuccess implements SubscriptionState {
  const factory _GetStoreProductsSuccess(final List<StoreProduct> products) =
      _$GetStoreProductsSuccessImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreProductsSuccessImplCopyWith<_$GetStoreProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStoreProductsFailedImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$GetStoreProductsFailedImplCopyWith(
          _$GetStoreProductsFailedImpl value,
          $Res Function(_$GetStoreProductsFailedImpl) then) =
      __$$GetStoreProductsFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products, String message});
}

/// @nodoc
class __$$GetStoreProductsFailedImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$GetStoreProductsFailedImpl>
    implements _$$GetStoreProductsFailedImplCopyWith<$Res> {
  __$$GetStoreProductsFailedImplCopyWithImpl(
      _$GetStoreProductsFailedImpl _value,
      $Res Function(_$GetStoreProductsFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? message = null,
  }) {
    return _then(_$GetStoreProductsFailedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStoreProductsFailedImpl implements _GetStoreProductsFailed {
  const _$GetStoreProductsFailedImpl(final List<StoreProduct> products,
      {required this.message})
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'SubscriptionState.getStoreProductsFailed(products: $products, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreProductsFailedImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreProductsFailedImplCopyWith<_$GetStoreProductsFailedImpl>
      get copyWith => __$$GetStoreProductsFailedImplCopyWithImpl<
          _$GetStoreProductsFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return getStoreProductsFailed(products, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return getStoreProductsFailed?.call(products, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsFailed != null) {
      return getStoreProductsFailed(products, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return getStoreProductsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return getStoreProductsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (getStoreProductsFailed != null) {
      return getStoreProductsFailed(this);
    }
    return orElse();
  }
}

abstract class _GetStoreProductsFailed implements SubscriptionState {
  const factory _GetStoreProductsFailed(final List<StoreProduct> products,
      {required final String message}) = _$GetStoreProductsFailedImpl;

  @override
  List<StoreProduct> get products;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreProductsFailedImplCopyWith<_$GetStoreProductsFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseProductSuccessImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$PurchaseProductSuccessImplCopyWith(
          _$PurchaseProductSuccessImpl value,
          $Res Function(_$PurchaseProductSuccessImpl) then) =
      __$$PurchaseProductSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products, StoreProduct purchasedProduct});

  $StoreProductCopyWith<$Res> get purchasedProduct;
}

/// @nodoc
class __$$PurchaseProductSuccessImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$PurchaseProductSuccessImpl>
    implements _$$PurchaseProductSuccessImplCopyWith<$Res> {
  __$$PurchaseProductSuccessImplCopyWithImpl(
      _$PurchaseProductSuccessImpl _value,
      $Res Function(_$PurchaseProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? purchasedProduct = null,
  }) {
    return _then(_$PurchaseProductSuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
      null == purchasedProduct
          ? _value.purchasedProduct
          : purchasedProduct // ignore: cast_nullable_to_non_nullable
              as StoreProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res> get purchasedProduct {
    return $StoreProductCopyWith<$Res>(_value.purchasedProduct, (value) {
      return _then(_value.copyWith(purchasedProduct: value));
    });
  }
}

/// @nodoc

class _$PurchaseProductSuccessImpl implements _PurchaseProductSuccess {
  const _$PurchaseProductSuccessImpl(
      final List<StoreProduct> products, this.purchasedProduct)
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final StoreProduct purchasedProduct;

  @override
  String toString() {
    return 'SubscriptionState.purchaseProductSuccess(products: $products, purchasedProduct: $purchasedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseProductSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.purchasedProduct, purchasedProduct) ||
                other.purchasedProduct == purchasedProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), purchasedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseProductSuccessImplCopyWith<_$PurchaseProductSuccessImpl>
      get copyWith => __$$PurchaseProductSuccessImplCopyWithImpl<
          _$PurchaseProductSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return purchaseProductSuccess(products, purchasedProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return purchaseProductSuccess?.call(products, purchasedProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductSuccess != null) {
      return purchaseProductSuccess(products, purchasedProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return purchaseProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return purchaseProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductSuccess != null) {
      return purchaseProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _PurchaseProductSuccess implements SubscriptionState {
  const factory _PurchaseProductSuccess(final List<StoreProduct> products,
      final StoreProduct purchasedProduct) = _$PurchaseProductSuccessImpl;

  @override
  List<StoreProduct> get products;
  StoreProduct get purchasedProduct;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseProductSuccessImplCopyWith<_$PurchaseProductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseProductFailureImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$PurchaseProductFailureImplCopyWith(
          _$PurchaseProductFailureImpl value,
          $Res Function(_$PurchaseProductFailureImpl) then) =
      __$$PurchaseProductFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products, String message});
}

/// @nodoc
class __$$PurchaseProductFailureImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$PurchaseProductFailureImpl>
    implements _$$PurchaseProductFailureImplCopyWith<$Res> {
  __$$PurchaseProductFailureImplCopyWithImpl(
      _$PurchaseProductFailureImpl _value,
      $Res Function(_$PurchaseProductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? message = null,
  }) {
    return _then(_$PurchaseProductFailureImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PurchaseProductFailureImpl implements _PurchaseProductFailure {
  const _$PurchaseProductFailureImpl(final List<StoreProduct> products,
      {required this.message})
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'SubscriptionState.purchaseProductFailure(products: $products, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseProductFailureImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseProductFailureImplCopyWith<_$PurchaseProductFailureImpl>
      get copyWith => __$$PurchaseProductFailureImplCopyWithImpl<
          _$PurchaseProductFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return purchaseProductFailure(products, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return purchaseProductFailure?.call(products, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductFailure != null) {
      return purchaseProductFailure(products, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return purchaseProductFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return purchaseProductFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductFailure != null) {
      return purchaseProductFailure(this);
    }
    return orElse();
  }
}

abstract class _PurchaseProductFailure implements SubscriptionState {
  const factory _PurchaseProductFailure(final List<StoreProduct> products,
      {required final String message}) = _$PurchaseProductFailureImpl;

  @override
  List<StoreProduct> get products;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseProductFailureImplCopyWith<_$PurchaseProductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseProductLoadingImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$PurchaseProductLoadingImplCopyWith(
          _$PurchaseProductLoadingImpl value,
          $Res Function(_$PurchaseProductLoadingImpl) then) =
      __$$PurchaseProductLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$PurchaseProductLoadingImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$PurchaseProductLoadingImpl>
    implements _$$PurchaseProductLoadingImplCopyWith<$Res> {
  __$$PurchaseProductLoadingImplCopyWithImpl(
      _$PurchaseProductLoadingImpl _value,
      $Res Function(_$PurchaseProductLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$PurchaseProductLoadingImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$PurchaseProductLoadingImpl implements _PurchaseProductLoading {
  const _$PurchaseProductLoadingImpl(final List<StoreProduct> products)
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.purchaseProductLoading(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseProductLoadingImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseProductLoadingImplCopyWith<_$PurchaseProductLoadingImpl>
      get copyWith => __$$PurchaseProductLoadingImplCopyWithImpl<
          _$PurchaseProductLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return purchaseProductLoading(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return purchaseProductLoading?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductLoading != null) {
      return purchaseProductLoading(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return purchaseProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return purchaseProductLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductLoading != null) {
      return purchaseProductLoading(this);
    }
    return orElse();
  }
}

abstract class _PurchaseProductLoading implements SubscriptionState {
  const factory _PurchaseProductLoading(final List<StoreProduct> products) =
      _$PurchaseProductLoadingImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseProductLoadingImplCopyWith<_$PurchaseProductLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseProductCancelImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$PurchaseProductCancelImplCopyWith(
          _$PurchaseProductCancelImpl value,
          $Res Function(_$PurchaseProductCancelImpl) then) =
      __$$PurchaseProductCancelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreProduct> products});
}

/// @nodoc
class __$$PurchaseProductCancelImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$PurchaseProductCancelImpl>
    implements _$$PurchaseProductCancelImplCopyWith<$Res> {
  __$$PurchaseProductCancelImplCopyWithImpl(_$PurchaseProductCancelImpl _value,
      $Res Function(_$PurchaseProductCancelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$PurchaseProductCancelImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StoreProduct>,
    ));
  }
}

/// @nodoc

class _$PurchaseProductCancelImpl implements _PurchaseProductCancel {
  const _$PurchaseProductCancelImpl(final List<StoreProduct> products)
      : _products = products;

  final List<StoreProduct> _products;
  @override
  List<StoreProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SubscriptionState.purchaseProductCancel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseProductCancelImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseProductCancelImplCopyWith<_$PurchaseProductCancelImpl>
      get copyWith => __$$PurchaseProductCancelImplCopyWithImpl<
          _$PurchaseProductCancelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<StoreProduct> products) initial,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsLoading,
    required TResult Function(List<StoreProduct> products) loading,
    required TResult Function(List<StoreProduct> products)
        getStoreProductsSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        getStoreProductsFailed,
    required TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)
        purchaseProductSuccess,
    required TResult Function(List<StoreProduct> products, String message)
        purchaseProductFailure,
    required TResult Function(List<StoreProduct> products)
        purchaseProductLoading,
    required TResult Function(List<StoreProduct> products)
        purchaseProductCancel,
  }) {
    return purchaseProductCancel(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StoreProduct> products)? initial,
    TResult? Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult? Function(List<StoreProduct> products)? loading,
    TResult? Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult? Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult? Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult? Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult? Function(List<StoreProduct> products)? purchaseProductCancel,
  }) {
    return purchaseProductCancel?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StoreProduct> products)? initial,
    TResult Function(List<StoreProduct> products)? getStoreProductsLoading,
    TResult Function(List<StoreProduct> products)? loading,
    TResult Function(List<StoreProduct> products)? getStoreProductsSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        getStoreProductsFailed,
    TResult Function(
            List<StoreProduct> products, StoreProduct purchasedProduct)?
        purchaseProductSuccess,
    TResult Function(List<StoreProduct> products, String message)?
        purchaseProductFailure,
    TResult Function(List<StoreProduct> products)? purchaseProductLoading,
    TResult Function(List<StoreProduct> products)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductCancel != null) {
      return purchaseProductCancel(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoreProductsLoading value)
        getStoreProductsLoading,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetStoreProductsSuccess value)
        getStoreProductsSuccess,
    required TResult Function(_GetStoreProductsFailed value)
        getStoreProductsFailed,
    required TResult Function(_PurchaseProductSuccess value)
        purchaseProductSuccess,
    required TResult Function(_PurchaseProductFailure value)
        purchaseProductFailure,
    required TResult Function(_PurchaseProductLoading value)
        purchaseProductLoading,
    required TResult Function(_PurchaseProductCancel value)
        purchaseProductCancel,
  }) {
    return purchaseProductCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult? Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult? Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult? Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult? Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult? Function(_PurchaseProductCancel value)? purchaseProductCancel,
  }) {
    return purchaseProductCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoreProductsLoading value)? getStoreProductsLoading,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetStoreProductsSuccess value)? getStoreProductsSuccess,
    TResult Function(_GetStoreProductsFailed value)? getStoreProductsFailed,
    TResult Function(_PurchaseProductSuccess value)? purchaseProductSuccess,
    TResult Function(_PurchaseProductFailure value)? purchaseProductFailure,
    TResult Function(_PurchaseProductLoading value)? purchaseProductLoading,
    TResult Function(_PurchaseProductCancel value)? purchaseProductCancel,
    required TResult orElse(),
  }) {
    if (purchaseProductCancel != null) {
      return purchaseProductCancel(this);
    }
    return orElse();
  }
}

abstract class _PurchaseProductCancel implements SubscriptionState {
  const factory _PurchaseProductCancel(final List<StoreProduct> products) =
      _$PurchaseProductCancelImpl;

  @override
  List<StoreProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseProductCancelImplCopyWith<_$PurchaseProductCancelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
