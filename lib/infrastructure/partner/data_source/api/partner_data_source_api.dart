import 'package:flutter_map/infrastructure/partner/data/partner_fake.dart';

import '../dto/dto_partner.dart';

class PartnerDataSourceApi {
  Future<List<DtoPartner>> getAllPartners() async {
    return PARTNER_FAKE_DATA
        .map((e) => DtoPartner.fromPartnerFakeData(e))
        .toList();
  }
}
