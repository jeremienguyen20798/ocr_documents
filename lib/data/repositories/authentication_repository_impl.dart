import 'package:ocr_documents/data/models/base_response.dart';
import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/data/models/register_request.dart';
import 'package:ocr_documents/data/remote/rest_api.dart';
import 'package:ocr_documents/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final RestAPI restAPI;

  AuthenticationRepositoryImpl(this.restAPI);

  @override
  Future<BaseResponse> changePassword(
    String newPassword,
    String confirmPassword,
  ) {
    final request = ChangePasswordRequest(
      'oldPassword',
      newPassword,
      confirmPassword,
    );
    return restAPI.changePassword(request);
  }

  @override
  Future<BaseResponse> login(String email, String password) {
    final request = LoginRequest(email, password, 'db');
    return restAPI.login(request);
  }

  @override
  Future<BaseResponse> logout() {
    return restAPI.logout();
  }

  @override
  Future<BaseResponse> register(
    String email,
    String password,
    String login,
    String name,
  ) {
    final request = RegisterRequest(name, email, login, password);
    return restAPI.register(request);
  }

  @override
  Future<BaseResponse> resetPassword(String email) {
    return restAPI.resetPassword(email);
  }
}
