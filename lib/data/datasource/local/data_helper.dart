import 'package:ocr_documents/core/constants/app_constant.dart';
import 'package:ocr_documents/dependency_injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataHelper {
  final prefs = getIt.get<SharedPreferences>();

  //Set
  void setHost(String host) {
    prefs.setString(hostKey, host);
  }

  void setProtocol(String protocol) {
    prefs.setString(protocolKey, protocol);
  }

  void setDatabase(String db) {
    prefs.setString(dbKey, db);
  }

  void setUid(int id) {
    prefs.setInt(uidKey, id);
  }

  //Get
  String? getDatabase() {
    return prefs.getString(dbKey);
  }

  int? getUid() {
    return prefs.getInt(uidKey);
  }
}
