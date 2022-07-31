import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/main/widget/partner_main_widget.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/bloc/partner_sliding_panel_bloc.dart';

class PartnerMainScreen extends StatelessWidget {
  const PartnerMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PartnerSlidingPanelBloc(),
        ),
        BlocProvider(
          create: (context) => PartnerSlidingPanelBloc(),
        ),
      ],
      child: PartnerMainWidget(),
    );
  }
}
