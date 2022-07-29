import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'partner_sliding_panel_state.dart';
part 'partner_sliding_panel_cubit.freezed.dart';

class PartnerSlidingPanelCubit extends Cubit<PartnerSlidingPanelState> {
  PartnerSlidingPanelCubit() : super(PartnerSlidingPanelState.initial());

  onTap(double latitude, double longitude, String markId) async {
    emit(state.copyWith(
        tap: !state.tap,
        latitude: latitude,
        longitude: longitude,
        markId: markId));
  }

  onExpand(bool expand) async {
    if (expand != state.expand) {
      emit(state.copyWith(expand: expand));
    }
  }
}
