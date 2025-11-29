import 'package:json_annotation/json_annotation.dart';

part 'referral_code_entities.g.dart';

@JsonSerializable()
class ReferralCodeEntities {
  final int id;
  final String name;
  final String refered;
  final int cnt;
  final String state;
  final String protocol;
  final String host;
  final int port;
  @JsonKey(name: 'privacy_url')
  final String privacyUrl;
  @JsonKey(name: 'odoo_ver')
  final String odooVersion;
  final String app;
  final String db;
  final String url;

  ReferralCodeEntities(
    this.id,
    this.name,
    this.refered,
    this.cnt,
    this.state,
    this.protocol,
    this.host,
    this.port,
    this.privacyUrl,
    this.odooVersion,
    this.app,
    this.db,
    this.url,
  );

  factory ReferralCodeEntities.fromJson(Map<String, dynamic> json) => _$ReferralCodeEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$ReferralCodeEntitiesToJson(this);

  @override
  String toString() {
    return "Entities: $app - $protocol - $host - $db";
  }
}
