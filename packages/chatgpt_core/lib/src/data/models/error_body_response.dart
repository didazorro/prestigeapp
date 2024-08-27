import 'package:json_annotation/json_annotation.dart';

part 'error_body_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ErrorBodyResponse {
  ErrorBodyResponse({
    required this.message,
    this.type,
    this.param,
    this.code,
  });

  @JsonKey(name: 'message', defaultValue: '')
  final String message;
  final String? type;
  final String? param;
  final String? code;

  factory ErrorBodyResponse.fromJson(Map<String, dynamic> json) {
    return _$ErrorBodyResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorBodyResponseToJson(this);
}
