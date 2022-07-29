part of 'partner_list_bloc.dart';

@freezed
class PartnerListState with _$PartnerListState {
  const factory PartnerListState({
    required StateStatus<FailureExceptions, List<Partner>?> status,
  }) = _PartnerListState;

  factory PartnerListState.initial() =>
      const PartnerListState(status: StateStatus.initial());
}
