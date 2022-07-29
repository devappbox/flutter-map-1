import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/domain/partner/repository/i_partner_repository.dart';

import '../data_source/api/partner_data_source_api.dart';
import '../data_source/dto/dto_partner.dart';

class PartnerRepository implements IPartnerRepository {
  PartnerRepository({required this.partnerDataSourceApi});
  final PartnerDataSourceApi partnerDataSourceApi;
  Future<List<Partner>> getAllPartners() async {
    List<DtoPartner> dp = await partnerDataSourceApi.getAllPartners();
    return dp.map((e) => e.toDomain()).toList();
  }
}
