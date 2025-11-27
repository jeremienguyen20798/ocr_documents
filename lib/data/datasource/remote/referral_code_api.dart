import 'package:ocr_documents/data/models/base_request.dart';
import 'package:ocr_documents/data/models/base_response.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: 'https://gerp-v12.erptoancau.com/get_company_refered')
abstract class ReferralCodeApi {
  Future<BaseResponse> changeReferralCode(@Body() BaseRequest request);
}
