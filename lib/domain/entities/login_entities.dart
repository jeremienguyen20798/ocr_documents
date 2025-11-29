import 'package:json_annotation/json_annotation.dart';

part 'login_entities.g.dart';

@JsonSerializable()
class LoginEntities {
  @JsonKey(name: 'session_id')
  final String? sessionId;
  final int? uid;
  final String? name;

  LoginEntities(this.sessionId, this.uid, this.name);

  factory LoginEntities.fromJson(Map<String, dynamic> json) => _$LoginEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntitiesToJson(this);
}