import 'package:ocr_documents/data/models/referral_code_response.dart';

import '../../data/models/referral_code_request.dart';

abstract class ReferralCodeRepository {
  Future<ReferralCodeResponse> getCompanyReferralCode(
    ReferralCodeRequest referralCodeRequest,
  );
}
