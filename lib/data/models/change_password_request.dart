import 'package:json_annotation/json_annotation.dart';

part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  @JsonKey(name: 'old_pwd')
  String oldPassword;
  @JsonKey(name: 'new_password')
  String newPassword;
  @JsonKey(name: 'confirm_pwd')
  String confirmPassword;

  ChangePasswordRequest(this.oldPassword, this.newPassword, this.confirmPassword);

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}