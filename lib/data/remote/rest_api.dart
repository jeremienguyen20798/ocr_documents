import 'package:dio/dio.dart';
import 'package:ocr_documents/data/models/base_response.dart';
import 'package:ocr_documents/data/models/change_password_request.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi()
abstract class RestAPI {

  factory RestAPI(Dio dio, {String? baseUrl}) = _RestAPI;

  @POST('/web/session/authenticate')
  Future<BaseResponse> login(@Body() LoginRequest loginRequest);
  @POST('/web/session/change_password')
  Future<BaseResponse> changePassword(
    @Body() ChangePasswordRequest changePasswordRequest,
  );
  @POST('/parameters_of_template/list')
  Future<BaseResponse> loadParameters(int? templateID);
}
