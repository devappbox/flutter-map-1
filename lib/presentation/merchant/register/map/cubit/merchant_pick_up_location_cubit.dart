// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'merchant_pick_up_location_state.dart';
// part 'merchant_pick_up_location_cubit.freezed.dart';

// class MerchantPickUpLocationCubit extends Cubit<MerchantPickUpLocationState> {
//   MerchantPickUpLocationCubit() : super(MerchantPickUpLocationState.initial());

//   onTap(double latitude, double longitude, String markerId) async {
//     emit(state.copyWith(
//         tap: !state.tap,
//         latitude: latitude,
//         longitude: longitude,
//         markerId: markerId));
//   }

//   onTapMarker(String markerId) async {
//     emit(state.copyWith(tapMarker: !state.tapMarker, markerId: markerId));
//   }

//   onExpand(bool expand) async {
//     if (expand != state.expand) {
//       emit(state.copyWith(expand: expand));
//     }
//   }
// }
