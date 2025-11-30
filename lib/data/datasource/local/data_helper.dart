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

  void setLogoUrl(String url) {
    prefs.setString(logoUrl, url);
  }

  void setAppName(String name) {
    prefs.setString(appName, name);
  }

  //Get
  String? getHost() {
    return prefs.getString(hostKey);
  }

  String? getProtocol() {
    return prefs.getString(protocolKey);
  }

  String? getDatabase() {
    return prefs.getString(dbKey);
  }

  int? getUid() {
    return prefs.getInt(uidKey);
  }

  String? getAppName() {
    return prefs.getString(appName);
  }

  String? getLogoUrl() {
    return prefs.getString(logoUrl);
  }
}
