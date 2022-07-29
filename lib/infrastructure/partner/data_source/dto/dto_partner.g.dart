// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoPartner _$$_DtoPartnerFromJson(Map<String, dynamic> json) =>
    _$_DtoPartner(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phoneNumber'] as String,
      latLong: json['latLong'] as String,
      services:
          (json['services'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_DtoPartnerToJson(_$_DtoPartner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'latLong': instance.latLong,
      'services': instance.services,
    };
