import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'partner_sliding_panel_state.dart';
part 'partner_sliding_panel_event.dart';
part 'partner_sliding_panel_bloc.freezed.dart';

class PartnerSlidingPanelBloc
    extends Bloc<PartnerSlidingPanelEvent, PartnerSlidingPanelState> {
  PartnerSlidingPanelBloc() : super(PartnerSlidingPanelState.initial()) {
    on<ExpandPartnerSlidingPanelEvent>(
      (event, emit) async {
        if (event.expand != state.expand) {
          emit(state.copyWith(expand: event.expand));
        }
      },
      transformer: concurrent(),
    );

    on<TapPartnerSlidingPanelEvent>((event, emit) async {
      emit(state.copyWith(
          tap: !state.tap,
          latitude: event.latitude,
          longitude: event.longitude,
          markerId: event.markerId));
    });

    on<TapMarkerPartnerSlidingPanelEvent>((event, emit) async {
      emit(state.copyWith(
          markerId: event.markerId, tapMarker: !state.tapMarker));
    });
  }
}
