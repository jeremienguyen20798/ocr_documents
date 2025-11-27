import 'package:ocr_documents/data/models/base_response.dart';

import '../../data/models/referral_code_request.dart';

abstract class ReferralCodeRepository {
  Future<BaseResponse> getCompanyReferralCode(
    ReferralCodeRequest referralCodeRequest,
  );
}
