import 'package:dio/dio.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi()
abstract class RestAPI {
  factory RestAPI(Dio dio, {String? baseUrl}) = _RestAPI;

  @POST('/web/session/authenticate')
  Future<dynamic> login(@Body() BaseRequest request);
  @POST('/web/session/change_password')
  Future<dynamic> changePassword(@Body() BaseRequest request);
  @POST('/parameters_of_template/list')
  Future<dynamic> loadParameters(BaseRequest request);
  @POST('/web/session/destroy')
  Future<dynamic> logout();
  @POST('/mobile/res_user/create')
  Future<dynamic> register(@Body() BaseRequest request);
  @POST('/mobile/reset_password')
  Future<dynamic> resetPassword(BaseRequest request);
}
