import 'package:ocr_documents/data/datasource/remote/referral_code_api.dart';
import 'package:ocr_documents/data/models/base_request.dart';
import 'package:ocr_documents/data/models/base_response.dart';

import 'package:ocr_documents/data/models/referral_code_request.dart';

import '../../domain/repository/referral_code_repository.dart';

class ReferralCodeRepositoryImpl extends ReferralCodeRepository {

  ReferralCodeAPI referralCodeApi;

  ReferralCodeRepositoryImpl(this.referralCodeApi);

  @override
  Future<BaseResponse> getCompanyReferralCode(ReferralCodeRequest referralCodeRequest) {
    final baseRequest = BaseRequest(referralCodeRequest.toJson());
    return referralCodeApi.getCompanyReferralCode(baseRequest);
  }
  
}