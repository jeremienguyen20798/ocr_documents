import 'package:go_router/go_router.dart';
import 'package:ocr_documents/features/home/home_page.dart';
import 'package:ocr_documents/features/login/view/login_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
      routes: [GoRoute(path: '/home', builder: (context, state) => HomePage())],
    ),
  ],
);
