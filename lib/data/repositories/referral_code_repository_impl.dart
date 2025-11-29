import 'package:ocr_documents/data/datasource/remote/referral_code_api.dart';
import 'package:ocr_documents/data/models/base_request.dart';

import 'package:ocr_documents/data/models/referral_code_request.dart';
import 'package:ocr_documents/data/models/referral_code_response.dart';

import '../../domain/repository/referral_code_repository.dart';

class ReferralCodeRepositoryImpl extends ReferralCodeRepository {
  ReferralCodeAPI referralCodeApi;

  ReferralCodeRepositoryImpl(this.referralCodeApi);

  @override
  Future<ReferralCodeResponse> getCompanyReferralCode(
    ReferralCodeRequest referralCodeRequest,
  ) async {
    final baseRequest = BaseRequest(referralCodeRequest.toJson());
    final response = await referralCodeApi.getCompanyReferralCode(baseRequest);
    return ReferralCodeResponse.fromJson(response);
  }
}
