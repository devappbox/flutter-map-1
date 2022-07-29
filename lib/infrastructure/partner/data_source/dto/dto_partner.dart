import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_partner.freezed.dart';
part 'dto_partner.g.dart';

@freezed
class DtoPartner with _$DtoPartner {
  const DtoPartner._();
  const factory DtoPartner({
    required String id,
    required String name,
    required String address,
    required String phoneNumber,
    required String latLong,
    required List<int> services,
  }) = _DtoPartner;

  factory DtoPartner.fromPartnerFakeData(Map<String, dynamic> partnerJson) =>
      DtoPartner(
          id: partnerJson["id"],
          name: partnerJson["name"],
          address: partnerJson["address"],
          phoneNumber: partnerJson["phoneNumber"],
          latLong: partnerJson["lat"] + "," + partnerJson["long"],
          services: partnerJson["service"]);

  factory DtoPartner.fromJson(Map<String, dynamic> json) =>
      _$DtoPartnerFromJson(json);
}

extension DtoPartnerX on DtoPartner {
  Partner toDomain() {
    return Partner(
        id: id,
        name: name,
        address: address,
        phoneNumber: phoneNumber,
        latLong: latLong,
        services: services);
  }
}
