import 'package:ocr_documents/data/models/base_response.dart';

abstract class AuthenticationRepository {
  Future<BaseResponse> login(String email, String password);
  Future<BaseResponse> logout();
  Future<BaseResponse> register(
    String email,
    String password,
    String login,
    String name,
  );
  Future<BaseResponse> resetPassword(String email);
  Future<BaseResponse> changePassword(
    String newPassword,
    String confirmPassword,
  );
}
