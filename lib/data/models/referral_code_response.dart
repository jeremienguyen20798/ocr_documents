import 'package:json_annotation/json_annotation.dart';
import 'package:ocr_documents/data/models/base_response.dart';

part 'referral_code_response.g.dart';

@JsonSerializable()
class ReferralCodeResponse extends BaseResponse {
  
  final List<dynamic> result;

  ReferralCodeResponse(this.result) : super('2.0', null);

  factory ReferralCodeResponse.fromJson(Map<String, dynamic> json) => _$ReferralCodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReferralCodeResponseToJson(this);

  List<dynamic> getResult() {
    return result;
  }
}
