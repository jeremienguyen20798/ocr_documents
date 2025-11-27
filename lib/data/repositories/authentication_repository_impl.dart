import 'package:ocr_documents/data/datasource/remote/rest_api.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:ocr_documents/data/models/base_response.dart';
import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/data/models/register_request.dart';
import 'package:ocr_documents/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final RestAPI restAPI;

  AuthenticationRepositoryImpl(this.restAPI);

  @override
  Future<BaseResponse> changePassword(
    ChangePasswordRequest changePasswordRequest,
  ) {
    final baseRequest = BaseRequest(changePasswordRequest.toJson());
    return restAPI.changePassword(baseRequest);
  }

  @override
  Future<BaseResponse> login(LoginRequest loginRequest) {
    final baseRequest = BaseRequest(loginRequest.toJson());
    return restAPI.login(baseRequest);
  }

  @override
  Future<BaseResponse> logout() {
    return restAPI.logout();
  }

  @override
  Future<BaseResponse> register(RegisterRequest registerRequest) {
    final baseRequest = BaseRequest(registerRequest.toJson());
    return restAPI.register(baseRequest);
  }

  @override
  Future<BaseResponse> resetPassword(String email) {
    final baseRequest = BaseRequest({"email": email});
    return restAPI.resetPassword(baseRequest);
  }
}
