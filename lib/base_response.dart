import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';
import 'response.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse<T> extends Response {
  BaseResponse({
    String? errorCode,
    required bool success,
    String? errorMessage,
    this.data,
  }) : super(
          errorCode: errorCode,
          success: success,
          errorMessage: errorMessage,
        );
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
  @Converter()
  final T? data;
}
