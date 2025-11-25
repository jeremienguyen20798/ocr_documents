// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralCodeRequest _$ReferralCodeRequestFromJson(Map<String, dynamic> json) =>
    ReferralCodeRequest(
      referralCode: json['refered'] as String?,
      host: json['host'] as String?,
      port: json['port'] as String?,
      db: json['db'] as String?,
    );

Map<String, dynamic> _$ReferralCodeRequestToJson(
  ReferralCodeRequest instance,
) => <String, dynamic>{
  'refered': instance.referralCode,
  'host': instance.host,
  'port': instance.port,
  'db': instance.db,
};
