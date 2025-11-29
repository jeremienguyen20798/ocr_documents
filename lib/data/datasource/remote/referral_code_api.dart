import 'package:dio/dio.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:retrofit/retrofit.dart';

part 'referral_code_api.g.dart';

@RestApi(baseUrl: 'https://gerp-v12.erptoancau.com')
abstract class ReferralCodeAPI {

  factory ReferralCodeAPI(Dio dio, {String baseUrl}) = _ReferralCodeAPI;

  @POST('/get_company_refered')
  Future<dynamic> getCompanyReferralCode(@Body() BaseRequest request);
}
