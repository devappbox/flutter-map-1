// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
// import 'package:flutter_map/presentation/merchant/map/bloc/merchant_pick_up_location_bloc.dart';
// import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart';
// import 'package:flutter_map/presentation/partner/sliding_panel/widget/partner_sliding_panel_widget.dart';

// class MerchantMainWidget extends StatefulWidget {
//   const MerchantMainWidget({Key? key}) : super(key: key);

//   @override
//   State<MerchantMainWidget> createState() => _MerchantMainWidgetState();
// }

// class _MerchantMainWidgetState extends State<MerchantMainWidget> {
//   @override
//   void initState() {
//     context.read<PartnerListCubit>()..onStarted();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//           BlocBuilder<MerchantPickUpLocationBloc, MerchantPickUpLocationState>(
//               builder: ((context, state) {
//         return state.status.when(
//             initial: () => Container(),
//             success: (data) => PartnerSlidingPanelWidget(),
//             loading: (text) => Align(
//                     child: Text(
//                   "Collecting Data...",
//                   style: TextStyle(
//                     fontSize: 17.0,
//                     color: Colors.blue,
//                   ),
//                 )),
//             failure: (failure) => Align(
//                     child: Text(
//                   "Terjadi Kesalahan",
//                   style: TextStyle(
//                     fontSize: 17.0,
//                     color: Colors.blue,
//                   ),
//                 )));
//       })),
//     );
//   }
// }
