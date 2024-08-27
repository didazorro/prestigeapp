import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../core/components/exceptions/invalid_api_key_exception.dart';
import 'error_body_response.dart';

part 'api_response.g.dart';

const _invalidApiKeyCode = 'invalid_api_key';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> extends Equatable {
  final ErrorBodyResponse? error;
  @JsonKey(name: 'data', includeIfNull: false)
  final T? _data;

  // use for update avatar of user api

  const ApiResponse({
    T? data,
    this.error,
  }) : _data = data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromT,
  ) {
    return _$ApiResponseFromJson(json, fromT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);

  @override
  List<Object> get props => [];

  T get data => _getData();

  T _getData() {
    if (error?.code == _invalidApiKeyCode) {
      throw InvalidApiKeyException(error!.message);
    }

    if ((error?.message.isNotEmpty ?? false || _data == null)) {
      throw ApiException(
        message: error?.message,
        code: error?.code,
      );
    }

    return _data as T;
  }
}

class ApiException implements Exception {
  final String? message;
  final String? code;
  final String? type;

  ApiException({
    required this.message,
    this.code,
    this.type,
  });
}
