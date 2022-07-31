part of 'partner_sliding_panel_bloc.dart';

@freezed
class PartnerSlidingPanelEvent with _$PartnerSlidingPanelEvent {
  const factory PartnerSlidingPanelEvent.tap(
      {required double latitude,
      required double longitude,
      required String markerId}) = TapPartnerSlidingPanelEvent;

  const factory PartnerSlidingPanelEvent.expand({required bool expand}) =
      ExpandPartnerSlidingPanelEvent;

  const factory PartnerSlidingPanelEvent.tapMarker({required String markerId}) =
      TapMarkerPartnerSlidingPanelEvent;
}
