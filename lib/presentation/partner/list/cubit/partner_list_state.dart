part of 'partner_list_cubit.dart';

@freezed
class PartnerListState with _$PartnerListState {
  const factory PartnerListState(
      {required List<Partner>? partners,
      required String? keyWord}) = _PartnerListState;

  factory PartnerListState.initial() =>
      const PartnerListState(partners: null, keyWord: null);
}
