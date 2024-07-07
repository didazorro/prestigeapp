// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewConfig _$ReviewConfigFromJson(Map<String, dynamic> json) {
  return _ReviewConfig.fromJson(json);
}

/// @nodoc
mixin _$ReviewConfig {
  ReviewServiceType get service => throw _privateConstructorUsedError;
  bool get enableReview => throw _privateConstructorUsedError;
  bool get enableReviewImage => throw _privateConstructorUsedError;
  int get maxImage => throw _privateConstructorUsedError;
  JudgeServiceConfig get judgeConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewConfigCopyWith<ReviewConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewConfigCopyWith<$Res> {
  factory $ReviewConfigCopyWith(
          ReviewConfig value, $Res Function(ReviewConfig) then) =
      _$ReviewConfigCopyWithImpl<$Res, ReviewConfig>;
  @useResult
  $Res call(
      {ReviewServiceType service,
      bool enableReview,
      bool enableReviewImage,
      int maxImage,
      JudgeServiceConfig judgeConfig});

  $JudgeServiceConfigCopyWith<$Res> get judgeConfig;
}

/// @nodoc
class _$ReviewConfigCopyWithImpl<$Res, $Val extends ReviewConfig>
    implements $ReviewConfigCopyWith<$Res> {
  _$ReviewConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
    Object? enableReview = null,
    Object? enableReviewImage = null,
    Object? maxImage = null,
    Object? judgeConfig = null,
  }) {
    return _then(_value.copyWith(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ReviewServiceType,
      enableReview: null == enableReview
          ? _value.enableReview
          : enableReview // ignore: cast_nullable_to_non_nullable
              as bool,
      enableReviewImage: null == enableReviewImage
          ? _value.enableReviewImage
          : enableReviewImage // ignore: cast_nullable_to_non_nullable
              as bool,
      maxImage: null == maxImage
          ? _value.maxImage
          : maxImage // ignore: cast_nullable_to_non_nullable
              as int,
      judgeConfig: null == judgeConfig
          ? _value.judgeConfig
          : judgeConfig // ignore: cast_nullable_to_non_nullable
              as JudgeServiceConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JudgeServiceConfigCopyWith<$Res> get judgeConfig {
    return $JudgeServiceConfigCopyWith<$Res>(_value.judgeConfig, (value) {
      return _then(_value.copyWith(judgeConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewConfigImplCopyWith<$Res>
    implements $ReviewConfigCopyWith<$Res> {
  factory _$$ReviewConfigImplCopyWith(
          _$ReviewConfigImpl value, $Res Function(_$ReviewConfigImpl) then) =
      __$$ReviewConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReviewServiceType service,
      bool enableReview,
      bool enableReviewImage,
      int maxImage,
      JudgeServiceConfig judgeConfig});

  @override
  $JudgeServiceConfigCopyWith<$Res> get judgeConfig;
}

/// @nodoc
class __$$ReviewConfigImplCopyWithImpl<$Res>
    extends _$ReviewConfigCopyWithImpl<$Res, _$ReviewConfigImpl>
    implements _$$ReviewConfigImplCopyWith<$Res> {
  __$$ReviewConfigImplCopyWithImpl(
      _$ReviewConfigImpl _value, $Res Function(_$ReviewConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
    Object? enableReview = null,
    Object? enableReviewImage = null,
    Object? maxImage = null,
    Object? judgeConfig = null,
  }) {
    return _then(_$ReviewConfigImpl(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ReviewServiceType,
      enableReview: null == enableReview
          ? _value.enableReview
          : enableReview // ignore: cast_nullable_to_non_nullable
              as bool,
      enableReviewImage: null == enableReviewImage
          ? _value.enableReviewImage
          : enableReviewImage // ignore: cast_nullable_to_non_nullable
              as bool,
      maxImage: null == maxImage
          ? _value.maxImage
          : maxImage // ignore: cast_nullable_to_non_nullable
              as int,
      judgeConfig: null == judgeConfig
          ? _value.judgeConfig
          : judgeConfig // ignore: cast_nullable_to_non_nullable
              as JudgeServiceConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewConfigImpl implements _ReviewConfig {
  const _$ReviewConfigImpl(
      {this.service = ReviewServiceType.native,
      this.enableReview = false,
      this.enableReviewImage = false,
      this.maxImage = 2,
      this.judgeConfig = const JudgeServiceConfig()});

  factory _$ReviewConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewConfigImplFromJson(json);

  @override
  @JsonKey()
  final ReviewServiceType service;
  @override
  @JsonKey()
  final bool enableReview;
  @override
  @JsonKey()
  final bool enableReviewImage;
  @override
  @JsonKey()
  final int maxImage;
  @override
  @JsonKey()
  final JudgeServiceConfig judgeConfig;

  @override
  String toString() {
    return 'ReviewConfig(service: $service, enableReview: $enableReview, enableReviewImage: $enableReviewImage, maxImage: $maxImage, judgeConfig: $judgeConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewConfigImpl &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.enableReview, enableReview) ||
                other.enableReview == enableReview) &&
            (identical(other.enableReviewImage, enableReviewImage) ||
                other.enableReviewImage == enableReviewImage) &&
            (identical(other.maxImage, maxImage) ||
                other.maxImage == maxImage) &&
            (identical(other.judgeConfig, judgeConfig) ||
                other.judgeConfig == judgeConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, service, enableReview,
      enableReviewImage, maxImage, judgeConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewConfigImplCopyWith<_$ReviewConfigImpl> get copyWith =>
      __$$ReviewConfigImplCopyWithImpl<_$ReviewConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewConfigImplToJson(
      this,
    );
  }
}

abstract class _ReviewConfig implements ReviewConfig {
  const factory _ReviewConfig(
      {final ReviewServiceType service,
      final bool enableReview,
      final bool enableReviewImage,
      final int maxImage,
      final JudgeServiceConfig judgeConfig}) = _$ReviewConfigImpl;

  factory _ReviewConfig.fromJson(Map<String, dynamic> json) =
      _$ReviewConfigImpl.fromJson;

  @override
  ReviewServiceType get service;
  @override
  bool get enableReview;
  @override
  bool get enableReviewImage;
  @override
  int get maxImage;
  @override
  JudgeServiceConfig get judgeConfig;
  @override
  @JsonKey(ignore: true)
  _$$ReviewConfigImplCopyWith<_$ReviewConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
