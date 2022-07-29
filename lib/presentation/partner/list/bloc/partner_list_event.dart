part of 'partner_list_bloc.dart';

@freezed
class PartnerListEvent with _$PartnerListEvent {
  const factory PartnerListEvent.changed({required String keyWord}) =
      ChangedKeyWordEvent;

  const factory PartnerListEvent.collect({required List<Partner>? partners}) =
      CollectPartnerListEvent;
}
