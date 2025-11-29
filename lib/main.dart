import 'package:flutter/material.dart';
import 'package:ocr_documents/dependency_injection.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}
