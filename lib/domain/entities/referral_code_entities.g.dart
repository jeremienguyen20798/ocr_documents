// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_code_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralCodeEntities _$ReferralCodeEntitiesFromJson(
  Map<String, dynamic> json,
) => ReferralCodeEntities(
  (json['id'] as num).toInt(),
  json['name'] as String,
  json['refered'] as String,
  (json['cnt'] as num).toInt(),
  json['state'] as String,
  json['protocol'] as String,
  json['host'] as String,
  (json['port'] as num).toInt(),
  json['privacy_url'] as String,
  json['odoo_ver'] as String,
  json['app'] as String,
  json['db'] as String,
  json['url'] as String,
);

Map<String, dynamic> _$ReferralCodeEntitiesToJson(
  ReferralCodeEntities instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'refered': instance.refered,
  'cnt': instance.cnt,
  'state': instance.state,
  'protocol': instance.protocol,
  'host': instance.host,
  'port': instance.port,
  'privacy_url': instance.privacyUrl,
  'odoo_ver': instance.odooVersion,
  'app': instance.app,
  'db': instance.db,
  'url': instance.url,
};
