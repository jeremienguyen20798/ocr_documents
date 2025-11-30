import 'package:flutter/material.dart';
import 'package:ocr_documents/dependency_injection.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}
