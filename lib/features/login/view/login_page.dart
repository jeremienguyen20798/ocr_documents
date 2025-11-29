import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocr_documents/features/login/bloc/login_bloc.dart';
import 'package:ocr_documents/features/login/bloc/login_event.dart';
import 'package:ocr_documents/features/login/view/login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc()..add(RequestInputReferralCodeEvent()),
      child: LoginView(),
    );
  }
}
