import 'package:ocr_documents/data/models/referral_code_request.dart';
import 'package:ocr_documents/dependency_injection.dart';
import 'package:ocr_documents/domain/entities/referral_code_entities.dart';
import 'package:ocr_documents/domain/repository/referral_code_repository.dart';

class ReferralCodeUsecase {
  final referralCodeRepo = getIt.get<ReferralCodeRepository>();

  Future<ReferralCodeEntities> execute(String code) async {
    final request = ReferralCodeRequest(referralCode: code);
    final response = await referralCodeRepo.getCompanyReferralCode(request);
    final result = response.getResult();
    final entities = ReferralCodeEntities.fromJson(result.first);
    return entities;
  }
}
