import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocr_documents/data/datasource/local/data_helper.dart';
import 'package:ocr_documents/domain/usecase/authentication_usecase.dart';
import 'package:ocr_documents/domain/usecase/referral_code_usecase.dart';
import 'package:ocr_documents/features/login/bloc/login_event.dart';
import 'package:ocr_documents/features/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialLoginState()) {
    on<RequestInputReferralCodeEvent>(_requestInputReferralCode);
    on<LoadConfigFromReferralCodeEvent>(_loadConfigFromReferralCode);
    on<ConfirmLoginRequestEvent>(_confirmLoginRequest);
    on<DisplayUILoginEvent>(_displayLoginUI);
  }

  void _requestInputReferralCode(
    RequestInputReferralCodeEvent event,
    Emitter<LoginState> emitter,
  ) {
    final protocol = DataHelper().getProtocol();
    final host = DataHelper().getHost();
    final db = DataHelper().getDatabase();
    if (protocol != null || host != null || db != null) {
      final logoUrl = DataHelper().getLogoUrl();
      final appName = DataHelper().getAppName();
      add(DisplayUILoginEvent(logoUrl!, appName!));
    } else {
      emitter(RequestInputReferralCodeState());
    }
  }

  Future<void> _loadConfigFromReferralCode(
    LoadConfigFromReferralCodeEvent event,
    Emitter<LoginState> emitter,
  ) async {
    final referralCodeEntities = await ReferralCodeUsecase().execute(
      event.referralCode,
    );
    log(referralCodeEntities.toString());
    DataHelper().setProtocol(referralCodeEntities.protocol);
    DataHelper().setHost(referralCodeEntities.host);
    DataHelper().setDatabase(referralCodeEntities.db);
    DataHelper().setAppName(referralCodeEntities.app);
    DataHelper().setLogoUrl(referralCodeEntities.url);
    emitter(
      LoadConfigFromReferralCodeState(
        referralCodeEntities.url,
        referralCodeEntities.app,
      ),
    );
  }

  Future<void> _confirmLoginRequest(
    ConfirmLoginRequestEvent event,
    Emitter<LoginState> emitter,
  ) async {
    final result = await AuthenticationUsecase().execute(
      event.email,
      event.password,
    );
    if (result != null) {
      DataHelper().setUid(result.uid!);
      emitter(ConfirmLoginRequestState(result));
    }
  }

  void _displayLoginUI(DisplayUILoginEvent event, Emitter<LoginState> emitter) {
    final logoApp = event.logo;
    final nameApp = event.name;
    emitter(DisplayUILoginState(nameApp, logoApp));
  }
}
