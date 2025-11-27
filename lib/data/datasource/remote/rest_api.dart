import 'package:dio/dio.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:ocr_documents/data/models/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi()
abstract class RestAPI {
  factory RestAPI(Dio dio, {String? baseUrl}) = _RestAPI;

  @POST('/web/session/authenticate')
  Future<BaseResponse> login(@Body() BaseRequest request);
  @POST('/web/session/change_password')
  Future<BaseResponse> changePassword(@Body() BaseRequest request);
  @POST('/parameters_of_template/list')
  Future<BaseResponse> loadParameters(BaseRequest request);
  @POST('/web/session/destroy')
  Future<BaseResponse> logout();
  @POST('/mobile/res_user/create')
  Future<BaseResponse> register(@Body() BaseRequest request);
  @POST('/mobile/reset_password')
  Future<BaseResponse> resetPassword(BaseRequest request);
}
