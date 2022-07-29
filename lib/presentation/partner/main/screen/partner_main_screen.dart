import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/widget/partner_sliding_panel_widget.dart';

class PartnerMainScreen extends StatefulWidget {
  const PartnerMainScreen({Key? key}) : super(key: key);

  @override
  State<PartnerMainScreen> createState() => _PartnerMainScreenState();
}

class _PartnerMainScreenState extends State<PartnerMainScreen> {
  @override
  void initState() {
    context.read<PartnerListCubit>()..onStarted();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PartnerListCubit, PartnerListState>(
          builder: ((context, state) {
        return state.status.when(
            initial: () => Container(),
            success: (data) => PartnerSlidingPanelWidget(),
            loading: () => Align(
                    child: Text(
                  "Sedang Mengambil Data...",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )),
            failure: (failure) => Align(
                    child: Text(
                  "Terjadi Kesalahan ${FailureExceptions.getErrorMessage(failure)}",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )));
      })),
    );
  }
}
