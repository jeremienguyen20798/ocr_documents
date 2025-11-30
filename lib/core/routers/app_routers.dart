import 'package:go_router/go_router.dart';
import 'package:ocr_documents/data/datasource/local/data_helper.dart';
import 'package:ocr_documents/features/home/home_page.dart';
import 'package:ocr_documents/features/login/view/login_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        final uid = DataHelper().getUid();
        return uid != null ? '/home' : '/login';
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
      routes: [GoRoute(path: '/home', builder: (context, state) => HomePage())],
    ),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
  ],
);
