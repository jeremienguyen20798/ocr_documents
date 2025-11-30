import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ocr_documents/core/utils/dialog_utils.dart';
import 'package:ocr_documents/features/login/bloc/login_bloc.dart';
import 'package:ocr_documents/features/login/bloc/login_event.dart';
import 'package:ocr_documents/features/login/bloc/login_state.dart';
import 'package:ocr_documents/shared/widgets/custom_button.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      builder: (context, state) {
        String? logoUrl, appName;
        if (state is LoadConfigFromReferralCodeState) {
          logoUrl = state.url;
          appName = state.app;
        } else if (state is DisplayUILoginState) {
          logoUrl = state.logoUrl;
          appName = state.appName;
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const .all(16.0),
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: appName != null && appName.isNotEmpty
                        ? Text(
                            appName,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : SizedBox.shrink(),
                    trailing: logoUrl != null && logoUrl.isNotEmpty
                        ? Image.network(logoUrl)
                        : SizedBox.shrink(),
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Nhập email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Nhập mật khẩu',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  CustomButton(
                    content: 'Đăng nhập',
                    onClick: () {
                      BlocProvider.of<LoginBloc>(context).add(
                        ConfirmLoginRequestEvent(
                          emailController.text,
                          passwordController.text,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) async {
        if (state is RequestInputReferralCodeState) {
          final referralCode = await DialogUtils.showReferralCodeDialog(
            context,
          );
          if (referralCode != null) {
            BlocProvider.of<LoginBloc>(
              // ignore: use_build_context_synchronously
              context,
            ).add(LoadConfigFromReferralCodeEvent(referralCode));
          }
        } else if (state is ConfirmLoginRequestState) {
          context.go('/home', extra: state.entities);
        }
      },
    );
  }
}
