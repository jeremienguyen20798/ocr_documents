import 'package:equatable/equatable.dart';
import 'package:ocr_documents/domain/entities/login_entities.dart';

abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialLoginState extends LoginState {}

class RequestInputReferralCodeState extends LoginState {}

class LoadConfigFromReferralCodeState extends LoginState {
  final String url;
  final String app;

  LoadConfigFromReferralCodeState(this.url, this.app);

  @override
  List<Object?> get props => [url, app];
}

class ConfirmLoginRequestState extends LoginState {
  final LoginEntities entities;

  ConfirmLoginRequestState(this.entities);

  @override
  List<Object?> get props => [entities];
}
