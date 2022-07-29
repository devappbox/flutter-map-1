import 'package:flutter_map/domain/partner/entity/partner.dart';

abstract class IPartnerService {
  Future<List<Partner>> getAllPartners();
}
