import 'package:get_it/get_it.dart';
import 'package:ocr_documents/core/configs/dio_configs.dart';
import 'package:ocr_documents/core/constants/app_constant.dart';
import 'package:ocr_documents/data/datasource/remote/ocr_rest_api.dart';
import 'package:ocr_documents/data/datasource/remote/referral_code_api.dart';
import 'package:ocr_documents/data/datasource/remote/rest_api.dart';
import 'package:ocr_documents/data/repositories/authentication_repository_impl.dart';
import 'package:ocr_documents/data/repositories/ocr_repository_impl.dart';
import 'package:ocr_documents/data/repositories/referral_code_repository_impl.dart';
import 'package:ocr_documents/domain/repository/authentication_repository.dart';
import 'package:ocr_documents/domain/repository/ocr_repository.dart';
import 'package:ocr_documents/domain/repository/referral_code_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    getIt.registerSingleton<SharedPreferences>(prefs);
    final protocol = prefs.getString(protocolKey);
    final host = prefs.getString(hostKey);
    if (protocol != null && host != null) {
      final authenUrl = '$protocol://$host';
      final dioClient = await DioConfigs().dioConfigs(authenUrl);
      RestAPI authAPI = RestAPI(dioClient);
      final AuthenticationRepository authenticationRepository =
          AuthenticationRepositoryImpl(authAPI);
      getIt.registerSingleton<AuthenticationRepository>(
        authenticationRepository,
      );
    }
    final referralCodeDioClient = await DioConfigs().dioConfigs(
      referralCodeUrl,
    );
    ReferralCodeAPI referralCodeAPI = ReferralCodeAPI(referralCodeDioClient);
    final ReferralCodeRepository referralCodeRepository =
        ReferralCodeRepositoryImpl(referralCodeAPI);
    getIt.registerSingleton<ReferralCodeRepository>(referralCodeRepository);
    final ocrDioClient = await DioConfigs().dioConfigs(ocrUrl);
    OcrRestAPI ocrRestAPI = OcrRestAPI(ocrDioClient);
    final OcrRepository ocrRepository = OcrRepositoryImpl(
      ocrRestAPI: ocrRestAPI,
    );
    getIt.registerSingleton<OcrRepository>(ocrRepository);
  }
}
