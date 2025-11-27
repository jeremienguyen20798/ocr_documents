import 'package:ocr_documents/data/models/base_response.dart';
import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/data/models/register_request.dart';

abstract class AuthenticationRepository {
  Future<BaseResponse> login(LoginRequest loginRequest);
  Future<BaseResponse> logout();
  Future<BaseResponse> register(RegisterRequest registerRequest);
  Future<BaseResponse> resetPassword(String email);
  Future<BaseResponse> changePassword(
    ChangePasswordRequest changePasswordRequest,
  );
}
