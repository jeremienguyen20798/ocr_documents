import 'package:ocr_documents/data/models/base_response.dart';

class LoginResponse extends BaseResponse {
  Map<String, dynamic> result;

  LoginResponse(this.result) : super("2.0", null);

}