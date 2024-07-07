// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeoConfig _$SeoConfigFromJson(Map<String, dynamic> json) {
  return _SeoConfig.fromJson(json);
}

/// @nodoc
mixin _$SeoConfig {
  SeoMetaRobot? get metaRobot => throw _privateConstructorUsedError;
  SeoMetaKeyValue? get metaKeyValue => throw _privateConstructorUsedError;
  SeoMetaNameContent? get metaNameContent => throw _privateConstructorUsedError;
  SeoMetaPropertyContent? get metaPropertyContent =>
      throw _privateConstructorUsedError;
  SeoMetaTwitter? get metaTwitter => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get viewport => throw _privateConstructorUsedError;
  String? get httpEquiv => throw _privateConstructorUsedError;
  String? get facebookAppID => throw _privateConstructorUsedError;
  String? get ogTitle => throw _privateConstructorUsedError;
  String? get ogDescription => throw _privateConstructorUsedError;
  String? get ogImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoConfigCopyWith<SeoConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoConfigCopyWith<$Res> {
  factory $SeoConfigCopyWith(SeoConfig value, $Res Function(SeoConfig) then) =
      _$SeoConfigCopyWithImpl<$Res, SeoConfig>;
  @useResult
  $Res call(
      {SeoMetaRobot? metaRobot,
      SeoMetaKeyValue? metaKeyValue,
      SeoMetaNameContent? metaNameContent,
      SeoMetaPropertyContent? metaPropertyContent,
      SeoMetaTwitter? metaTwitter,
      String? author,
      String? description,
      List<String>? keywords,
      String? viewport,
      String? httpEquiv,
      String? facebookAppID,
      String? ogTitle,
      String? ogDescription,
      String? ogImage});

  $SeoMetaRobotCopyWith<$Res>? get metaRobot;
  $SeoMetaKeyValueCopyWith<$Res>? get metaKeyValue;
  $SeoMetaNameContentCopyWith<$Res>? get metaNameContent;
  $SeoMetaPropertyContentCopyWith<$Res>? get metaPropertyContent;
  $SeoMetaTwitterCopyWith<$Res>? get metaTwitter;
}

/// @nodoc
class _$SeoConfigCopyWithImpl<$Res, $Val extends SeoConfig>
    implements $SeoConfigCopyWith<$Res> {
  _$SeoConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRobot = freezed,
    Object? metaKeyValue = freezed,
    Object? metaNameContent = freezed,
    Object? metaPropertyContent = freezed,
    Object? metaTwitter = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
    Object? viewport = freezed,
    Object? httpEquiv = freezed,
    Object? facebookAppID = freezed,
    Object? ogTitle = freezed,
    Object? ogDescription = freezed,
    Object? ogImage = freezed,
  }) {
    return _then(_value.copyWith(
      metaRobot: freezed == metaRobot
          ? _value.metaRobot
          : metaRobot // ignore: cast_nullable_to_non_nullable
              as SeoMetaRobot?,
      metaKeyValue: freezed == metaKeyValue
          ? _value.metaKeyValue
          : metaKeyValue // ignore: cast_nullable_to_non_nullable
              as SeoMetaKeyValue?,
      metaNameContent: freezed == metaNameContent
          ? _value.metaNameContent
          : metaNameContent // ignore: cast_nullable_to_non_nullable
              as SeoMetaNameContent?,
      metaPropertyContent: freezed == metaPropertyContent
          ? _value.metaPropertyContent
          : metaPropertyContent // ignore: cast_nullable_to_non_nullable
              as SeoMetaPropertyContent?,
      metaTwitter: freezed == metaTwitter
          ? _value.metaTwitter
          : metaTwitter // ignore: cast_nullable_to_non_nullable
              as SeoMetaTwitter?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as String?,
      httpEquiv: freezed == httpEquiv
          ? _value.httpEquiv
          : httpEquiv // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookAppID: freezed == facebookAppID
          ? _value.facebookAppID
          : facebookAppID // ignore: cast_nullable_to_non_nullable
              as String?,
      ogTitle: freezed == ogTitle
          ? _value.ogTitle
          : ogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      ogDescription: freezed == ogDescription
          ? _value.ogDescription
          : ogDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ogImage: freezed == ogImage
          ? _value.ogImage
          : ogImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoMetaRobotCopyWith<$Res>? get metaRobot {
    if (_value.metaRobot == null) {
      return null;
    }

    return $SeoMetaRobotCopyWith<$Res>(_value.metaRobot!, (value) {
      return _then(_value.copyWith(metaRobot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoMetaKeyValueCopyWith<$Res>? get metaKeyValue {
    if (_value.metaKeyValue == null) {
      return null;
    }

    return $SeoMetaKeyValueCopyWith<$Res>(_value.metaKeyValue!, (value) {
      return _then(_value.copyWith(metaKeyValue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoMetaNameContentCopyWith<$Res>? get metaNameContent {
    if (_value.metaNameContent == null) {
      return null;
    }

    return $SeoMetaNameContentCopyWith<$Res>(_value.metaNameContent!, (value) {
      return _then(_value.copyWith(metaNameContent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoMetaPropertyContentCopyWith<$Res>? get metaPropertyContent {
    if (_value.metaPropertyContent == null) {
      return null;
    }

    return $SeoMetaPropertyContentCopyWith<$Res>(_value.metaPropertyContent!,
        (value) {
      return _then(_value.copyWith(metaPropertyContent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoMetaTwitterCopyWith<$Res>? get metaTwitter {
    if (_value.metaTwitter == null) {
      return null;
    }

    return $SeoMetaTwitterCopyWith<$Res>(_value.metaTwitter!, (value) {
      return _then(_value.copyWith(metaTwitter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeoConfigImplCopyWith<$Res>
    implements $SeoConfigCopyWith<$Res> {
  factory _$$SeoConfigImplCopyWith(
          _$SeoConfigImpl value, $Res Function(_$SeoConfigImpl) then) =
      __$$SeoConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SeoMetaRobot? metaRobot,
      SeoMetaKeyValue? metaKeyValue,
      SeoMetaNameContent? metaNameContent,
      SeoMetaPropertyContent? metaPropertyContent,
      SeoMetaTwitter? metaTwitter,
      String? author,
      String? description,
      List<String>? keywords,
      String? viewport,
      String? httpEquiv,
      String? facebookAppID,
      String? ogTitle,
      String? ogDescription,
      String? ogImage});

  @override
  $SeoMetaRobotCopyWith<$Res>? get metaRobot;
  @override
  $SeoMetaKeyValueCopyWith<$Res>? get metaKeyValue;
  @override
  $SeoMetaNameContentCopyWith<$Res>? get metaNameContent;
  @override
  $SeoMetaPropertyContentCopyWith<$Res>? get metaPropertyContent;
  @override
  $SeoMetaTwitterCopyWith<$Res>? get metaTwitter;
}

/// @nodoc
class __$$SeoConfigImplCopyWithImpl<$Res>
    extends _$SeoConfigCopyWithImpl<$Res, _$SeoConfigImpl>
    implements _$$SeoConfigImplCopyWith<$Res> {
  __$$SeoConfigImplCopyWithImpl(
      _$SeoConfigImpl _value, $Res Function(_$SeoConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRobot = freezed,
    Object? metaKeyValue = freezed,
    Object? metaNameContent = freezed,
    Object? metaPropertyContent = freezed,
    Object? metaTwitter = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
    Object? viewport = freezed,
    Object? httpEquiv = freezed,
    Object? facebookAppID = freezed,
    Object? ogTitle = freezed,
    Object? ogDescription = freezed,
    Object? ogImage = freezed,
  }) {
    return _then(_$SeoConfigImpl(
      metaRobot: freezed == metaRobot
          ? _value.metaRobot
          : metaRobot // ignore: cast_nullable_to_non_nullable
              as SeoMetaRobot?,
      metaKeyValue: freezed == metaKeyValue
          ? _value.metaKeyValue
          : metaKeyValue // ignore: cast_nullable_to_non_nullable
              as SeoMetaKeyValue?,
      metaNameContent: freezed == metaNameContent
          ? _value.metaNameContent
          : metaNameContent // ignore: cast_nullable_to_non_nullable
              as SeoMetaNameContent?,
      metaPropertyContent: freezed == metaPropertyContent
          ? _value.metaPropertyContent
          : metaPropertyContent // ignore: cast_nullable_to_non_nullable
              as SeoMetaPropertyContent?,
      metaTwitter: freezed == metaTwitter
          ? _value.metaTwitter
          : metaTwitter // ignore: cast_nullable_to_non_nullable
              as SeoMetaTwitter?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as String?,
      httpEquiv: freezed == httpEquiv
          ? _value.httpEquiv
          : httpEquiv // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookAppID: freezed == facebookAppID
          ? _value.facebookAppID
          : facebookAppID // ignore: cast_nullable_to_non_nullable
              as String?,
      ogTitle: freezed == ogTitle
          ? _value.ogTitle
          : ogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      ogDescription: freezed == ogDescription
          ? _value.ogDescription
          : ogDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ogImage: freezed == ogImage
          ? _value.ogImage
          : ogImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SeoConfigImpl extends _SeoConfig {
  const _$SeoConfigImpl(
      {this.metaRobot,
      this.metaKeyValue,
      this.metaNameContent,
      this.metaPropertyContent,
      this.metaTwitter,
      this.author,
      this.description,
      final List<String>? keywords,
      this.viewport,
      this.httpEquiv,
      this.facebookAppID,
      this.ogTitle,
      this.ogDescription,
      this.ogImage})
      : _keywords = keywords,
        super._();

  factory _$SeoConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoConfigImplFromJson(json);

  @override
  final SeoMetaRobot? metaRobot;
  @override
  final SeoMetaKeyValue? metaKeyValue;
  @override
  final SeoMetaNameContent? metaNameContent;
  @override
  final SeoMetaPropertyContent? metaPropertyContent;
  @override
  final SeoMetaTwitter? metaTwitter;
  @override
  final String? author;
  @override
  final String? description;
  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? viewport;
  @override
  final String? httpEquiv;
  @override
  final String? facebookAppID;
  @override
  final String? ogTitle;
  @override
  final String? ogDescription;
  @override
  final String? ogImage;

  @override
  String toString() {
    return 'SeoConfig(metaRobot: $metaRobot, metaKeyValue: $metaKeyValue, metaNameContent: $metaNameContent, metaPropertyContent: $metaPropertyContent, metaTwitter: $metaTwitter, author: $author, description: $description, keywords: $keywords, viewport: $viewport, httpEquiv: $httpEquiv, facebookAppID: $facebookAppID, ogTitle: $ogTitle, ogDescription: $ogDescription, ogImage: $ogImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoConfigImpl &&
            (identical(other.metaRobot, metaRobot) ||
                other.metaRobot == metaRobot) &&
            (identical(other.metaKeyValue, metaKeyValue) ||
                other.metaKeyValue == metaKeyValue) &&
            (identical(other.metaNameContent, metaNameContent) ||
                other.metaNameContent == metaNameContent) &&
            (identical(other.metaPropertyContent, metaPropertyContent) ||
                other.metaPropertyContent == metaPropertyContent) &&
            (identical(other.metaTwitter, metaTwitter) ||
                other.metaTwitter == metaTwitter) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport) &&
            (identical(other.httpEquiv, httpEquiv) ||
                other.httpEquiv == httpEquiv) &&
            (identical(other.facebookAppID, facebookAppID) ||
                other.facebookAppID == facebookAppID) &&
            (identical(other.ogTitle, ogTitle) || other.ogTitle == ogTitle) &&
            (identical(other.ogDescription, ogDescription) ||
                other.ogDescription == ogDescription) &&
            (identical(other.ogImage, ogImage) || other.ogImage == ogImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      metaRobot,
      metaKeyValue,
      metaNameContent,
      metaPropertyContent,
      metaTwitter,
      author,
      description,
      const DeepCollectionEquality().hash(_keywords),
      viewport,
      httpEquiv,
      facebookAppID,
      ogTitle,
      ogDescription,
      ogImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoConfigImplCopyWith<_$SeoConfigImpl> get copyWith =>
      __$$SeoConfigImplCopyWithImpl<_$SeoConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoConfigImplToJson(
      this,
    );
  }
}

abstract class _SeoConfig extends SeoConfig {
  const factory _SeoConfig(
      {final SeoMetaRobot? metaRobot,
      final SeoMetaKeyValue? metaKeyValue,
      final SeoMetaNameContent? metaNameContent,
      final SeoMetaPropertyContent? metaPropertyContent,
      final SeoMetaTwitter? metaTwitter,
      final String? author,
      final String? description,
      final List<String>? keywords,
      final String? viewport,
      final String? httpEquiv,
      final String? facebookAppID,
      final String? ogTitle,
      final String? ogDescription,
      final String? ogImage}) = _$SeoConfigImpl;
  const _SeoConfig._() : super._();

  factory _SeoConfig.fromJson(Map<String, dynamic> json) =
      _$SeoConfigImpl.fromJson;

  @override
  SeoMetaRobot? get metaRobot;
  @override
  SeoMetaKeyValue? get metaKeyValue;
  @override
  SeoMetaNameContent? get metaNameContent;
  @override
  SeoMetaPropertyContent? get metaPropertyContent;
  @override
  SeoMetaTwitter? get metaTwitter;
  @override
  String? get author;
  @override
  String? get description;
  @override
  List<String>? get keywords;
  @override
  String? get viewport;
  @override
  String? get httpEquiv;
  @override
  String? get facebookAppID;
  @override
  String? get ogTitle;
  @override
  String? get ogDescription;
  @override
  String? get ogImage;
  @override
  @JsonKey(ignore: true)
  _$$SeoConfigImplCopyWith<_$SeoConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
