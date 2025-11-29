import 'package:ocr_documents/data/datasource/local/data_helper.dart';
import 'package:ocr_documents/data/models/login_request.dart';
import 'package:ocr_documents/dependency_injection.dart';
import 'package:ocr_documents/domain/entities/login_entities.dart';
import 'package:ocr_documents/domain/repository/authentication_repository.dart';

class AuthenticationUsecase {
  final authRepo = getIt.get<AuthenticationRepository>();

  Future<LoginEntities?> execute(String email, String password) async {
    final db = DataHelper().getDatabase();
    if (db != null) {
      final request = LoginRequest(email, password, db);
      final response = await authRepo.login(request);
      final entities = LoginEntities.fromJson(response.result);
      return entities;
    }
    return null;
  }
}
