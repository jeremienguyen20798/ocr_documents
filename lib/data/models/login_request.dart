import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  @JsonKey(name: 'login')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'db')
  final String db;

  LoginRequest(this.email, this.password, this.db);

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}