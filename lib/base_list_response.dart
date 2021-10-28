import 'response.dart';
import 'converter.dart';

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
      BaseListResponse<T>(
        errorCode: json['errorCode'] as String?,
        success: json['success'] as bool,
        errorMessage: json['errorMessage'] as String?,
        data: listDataFromJson<T>(json['data'] as List<dynamic>?),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'errorCode': errorCode,
        'success': success,
        'errorMessage': errorMessage,
        'data': dataToJson<T>(data),
      };
  final List<T>? data;
}
