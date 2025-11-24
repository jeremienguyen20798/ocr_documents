import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  Map? body;
  int? statusCode;

  BaseResponse(this.statusCode, this.body);

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  bool hasError() {
    return body!["error"] != null;
  }

  int? getStatusCode() {
    return statusCode;
  }

  String? getErrorMessage() {
    if (hasError()) {
      if (body!["error"]['data'] != null &&
          body!["error"]['data']["message"] != null) {
        return body!["error"]['data']["message"];
      } else {
        if (body!["error"]["message"] != null) {
          return body!["error"]["message"];
        }
      }
    }
    return null;
  }
}
