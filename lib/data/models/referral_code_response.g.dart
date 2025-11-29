// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralCodeResponse _$ReferralCodeResponseFromJson(
  Map<String, dynamic> json,
) => ReferralCodeResponse(json['result'] as List<dynamic>)
  ..jsonrpc = json['jsonrpc'] as String
  ..id = json['id'] as String?;

Map<String, dynamic> _$ReferralCodeResponseToJson(
  ReferralCodeResponse instance,
) => <String, dynamic>{
  'jsonrpc': instance.jsonrpc,
  'id': instance.id,
  'result': instance.result,
};
