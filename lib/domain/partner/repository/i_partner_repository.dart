import 'package:flutter_map/domain/partner/entity/partner.dart';

abstract class IPartnerRepository {
  Future<List<Partner>> getAllPartners();
}
