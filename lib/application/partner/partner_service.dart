import 'package:dartz/dartz.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/domain/partner/repository/i_partner_repository.dart';

import 'i_partner_service.dart';

class PartnerService implements IPartnerService {
  PartnerService({required this.partnerRepository});
  final IPartnerRepository partnerRepository;
  Future<Either<FailureExceptions, List<Partner>>> getAllPartners() async {
    return partnerRepository.getAllPartners();
  }
}
