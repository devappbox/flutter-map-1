part of 'partner_sliding_panel_cubit.dart';

@freezed
class PartnerSlidingPanelState with _$PartnerSlidingPanelState {
  const factory PartnerSlidingPanelState({
    required double? latitude,
    required double? longitude,
    required bool tap,
    required bool expand,
    required String? markId,
  }) = _PartnerSlidingPanelState;

  factory PartnerSlidingPanelState.initial() => const PartnerSlidingPanelState(
      latitude: null, longitude: null, tap: false, expand: false, markId: null);
}
