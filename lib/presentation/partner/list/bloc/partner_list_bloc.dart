import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/presentation/common/state/state_status.dart';
import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart'
    as cbt;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rxdart/rxdart.dart';

part 'partner_list_state.dart';
part 'partner_list_event.dart';
part 'partner_list_bloc.freezed.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}

class PartnerListBloc extends Bloc<PartnerListEvent, PartnerListState> {
  cbt.PartnerListCubit partnerListCubit;
  PartnerListBloc({
    required this.partnerListCubit,
  })  : _partnerListCubit = partnerListCubit,
        super(PartnerListState.initial()) {
    _streamSubscription = _partnerListCubit.stream.listen((c) {
      c.status.maybeWhen(
          success: (r) => add(CollectPartnerListEvent(partners: r)),
          orElse: () => null);
    });

    on<ChangedKeyWordEvent>(_onChangedKeyWordEvent,
        transformer: debounce(const Duration(milliseconds: 100)));
    on<CollectPartnerListEvent>(_onCollectPartnerListEvent);
  }

  final cbt.PartnerListCubit _partnerListCubit;
  late StreamSubscription<cbt.PartnerListState> _streamSubscription;

  void _onChangedKeyWordEvent(
    ChangedKeyWordEvent event,
    Emitter<PartnerListState> emit,
  ) async {
    if (event.keyWord.isEmpty) {
      emit(state.copyWith(status: const StateStatus.initial()));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
    }
  }

  void _onCollectPartnerListEvent(
    CollectPartnerListEvent event,
    Emitter<PartnerListState> emit,
  ) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    await Future.delayed(Duration(milliseconds: 1000));
    debugPrint("PARTNER LIST BLOC DATA ${event.partners}");
    emit(state.copyWith(status: StateStatus.success(data: event.partners)));
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
