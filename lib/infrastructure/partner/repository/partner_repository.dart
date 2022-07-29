import 'package:dartz/dartz.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/domain/partner/repository/i_partner_repository.dart';

import '../data_source/api/partner_data_source_api.dart';
import '../data_source/dto/dto_partner.dart';

class PartnerRepository implements IPartnerRepository {
  PartnerRepository({required this.partnerDataSourceApi});
  final PartnerDataSourceApi partnerDataSourceApi;
  Future<Either<FailureExceptions, List<Partner>>> getAllPartners() async {
    try {
      List<DtoPartner> dp = await partnerDataSourceApi.getAllPartners();
      return right(dp.map((e) => e.toDomain()).toList());
    } catch (e) {
      return left(FailureExceptions.getDioException(e));
    }
  }
}
