import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/di/injection.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart';

class PartnerMainScreen extends StatelessWidget {
  const PartnerMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => getIt<PartnerListCubit>()..onStarted(),
        lazy: false,
      ),
      BlocProvider(
        create: (context) => getIt<PartnerListBloc>(),
      ),
    ],
    child:
    
    );
    
    
    
    
  }
}
