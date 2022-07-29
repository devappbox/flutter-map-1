import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart';
import 'package:flutter_map/presentation/partner/main/widget/partner_main_widget.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/cubit/partner_sliding_panel_cubit.dart';

class PartnerMainScreen extends StatelessWidget {
  const PartnerMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PartnerSlidingPanelCubit(),
      child: PartnerMainWidget(),
    );
  }
}
