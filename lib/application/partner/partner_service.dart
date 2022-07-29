import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/domain/partner/repository/i_partner_repository.dart';

import 'i_partner_service.dart';

class PartnerService implements IPartnerService {
  PartnerService({required this.partnerRepository});
  final IPartnerRepository partnerRepository;
  Future<List<Partner>> getAllPartners() async {
    return partnerRepository.getAllPartners();
  }
}
