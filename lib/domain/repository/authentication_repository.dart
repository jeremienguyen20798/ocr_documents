import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/data/models/login_response.dart';
import 'package:ocr_documents/data/models/register_request.dart';

abstract class AuthenticationRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<LoginResponse> logout();
  Future<LoginResponse> register(RegisterRequest registerRequest);
  Future<LoginResponse> resetPassword(String email);
  Future<LoginResponse> changePassword(
    ChangePasswordRequest changePasswordRequest,
  );
}
