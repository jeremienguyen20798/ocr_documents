// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntities _$LoginEntitiesFromJson(Map<String, dynamic> json) =>
    LoginEntities(
      json['session_id'] as String?,
      (json['uid'] as num?)?.toInt(),
      json['name'] as String?,
    );

Map<String, dynamic> _$LoginEntitiesToJson(LoginEntities instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'uid': instance.uid,
      'name': instance.name,
    };
