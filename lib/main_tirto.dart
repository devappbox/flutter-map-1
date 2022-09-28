import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/di/injection.dart';
import 'package:flutter_map/presentation/common/colors.dart';
import 'package:flutter_map/presentation/merchant/register/form/screen/merchant_register_form_screen.dart';
import 'package:flutter_map/presentation/merchant/register/map/bloc/merchant_pick_up_location_bloc.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:flutter_map/presentation/partner/list/cubit/partner_list_cubit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureGetIt();

  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }

  runApp(MultiBlocProvider(
    providers: [
      //BlocProvider(create: (context) => getIt<MerchantPickUpLocationBloc>()),
      BlocProvider(create: (context) => getIt<PartnerListCubit>()),
      BlocProvider(
        create: (context) => getIt<PartnerListBloc>(),
        lazy: false,
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PICK UP LOCATION',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(
          builder: ((context) => Scaffold(
                // floatingActionButtonLocation:
                //     FloatingActionButtonLocation.centerFloat,
                // floatingActionButton: FloatingActionButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const PartnerMainScreen()),
                //     );
                //   },
                //   child: Icon(Icons.map_outlined),
                // ),
                body: MerchantRegisterFormScreen(),
              )),
        ));
  }
}

//-6.1751577307273315, 106.82714206784512 MONAS JAKARTA