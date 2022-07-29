import 'package:dartz/dartz.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';

abstract class IPartnerRepository {
  Future<Either<FailureExceptions, List<Partner>>> getAllPartners();
}
