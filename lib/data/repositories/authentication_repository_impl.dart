import 'package:ocr_documents/data/datasource/remote/rest_api.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/data/models/login_response.dart';
import 'package:ocr_documents/data/models/register_request.dart';
import 'package:ocr_documents/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final RestAPI restAPI;

  AuthenticationRepositoryImpl(this.restAPI);

  @override
  Future<LoginResponse> changePassword(
    ChangePasswordRequest changePasswordRequest,
  ) async {
    final baseRequest = BaseRequest(changePasswordRequest.toJson());
    final response = await restAPI.changePassword(baseRequest);
    return LoginResponse(response);
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final baseRequest = BaseRequest(loginRequest.toJson());
    final response = await restAPI.login(baseRequest);
    return LoginResponse(response);
  }

  @override
  Future<LoginResponse> logout() async {
    final response = await restAPI.logout();
    return LoginResponse(response);
  }

  @override
  Future<LoginResponse> register(RegisterRequest registerRequest) async {
    final baseRequest = BaseRequest(registerRequest.toJson());
    final response = await restAPI.register(baseRequest);
    return LoginResponse(response);
  }

  @override
  Future<LoginResponse> resetPassword(String email) async {
    final baseRequest = BaseRequest({"email": email});
    final response = await restAPI.resetPassword(baseRequest);
    return LoginResponse(response);
  }
}
