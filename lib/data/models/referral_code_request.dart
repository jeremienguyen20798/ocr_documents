import 'package:json_annotation/json_annotation.dart';

part 'referral_code_request.g.dart';

@JsonSerializable()
class ReferralCodeRequest {
  @JsonKey(name: 'refered')
  final String? referralCode;
  final String? host;
  final String? port;
  final String? db;

  ReferralCodeRequest({this.referralCode, this.host, this.port, this.db});

  factory ReferralCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReferralCodeRequestToJson(this);
}
