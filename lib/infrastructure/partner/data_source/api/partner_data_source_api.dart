import 'package:flutter_map/infrastructure/partner/data/partner_fake.dart';

import '../dto/dto_partner.dart';

class PartnerDataSourceApi {
  Future<List<DtoPartner>> getAllPartners() async {
    try {
      return PARTNER_FAKE_DATA
          .map((e) => DtoPartner.fromPartnerFakeData(e))
          .toList();
    } catch (e) {
      throw (e);
    }
  }
}
