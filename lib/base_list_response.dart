import 'package:json_annotation/json_annotation.dart';

import 'response.dart';
import 'converter.dart';
part 'base_list_response.g.dart';

@JsonSerializable()
class BaseListResponse<T> extends Response {
  BaseListResponse({
    String? errorCode,
    required bool success,
    String? errorMessage,
    this.data,
  }) : super(
          errorCode: errorCode,
          success: success,
          errorMessage: errorMessage,
        );

  factory BaseListResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseListResponseToJson(this);
  @JsonKey(fromJson: dataFromJson, toJson: dataToJson)
  final List<T>? data;
}
