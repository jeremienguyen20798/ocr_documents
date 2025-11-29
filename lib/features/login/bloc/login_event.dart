abstract class LoginEvent {}

class RequestInputReferralCodeEvent extends LoginEvent {}

class LoadConfigFromReferralCodeEvent extends LoginEvent {
  final String referralCode;

  LoadConfigFromReferralCodeEvent(this.referralCode);
}

class ConfirmLoginRequestEvent extends LoginEvent {
  final String email;
  final String password;

  ConfirmLoginRequestEvent(this.email, this.password);
}
