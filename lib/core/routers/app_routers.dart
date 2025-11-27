import 'package:go_router/go_router.dart';
import 'package:ocr_documents/features/login/login_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [GoRoute(path: '/login', builder: (context, state) => LoginPage())],
);
