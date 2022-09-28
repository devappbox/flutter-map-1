import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'merchant_register_form_export_widget.dart';

class MerchantRegisterFormWidget extends StatefulWidget {
  MerchantRegisterFormWidget({Key? key}) : super(key: key);

  @override
  State<MerchantRegisterFormWidget> createState() =>
      _MerchantRegisterFormWidgetState();
}

class _MerchantRegisterFormWidgetState
    extends State<MerchantRegisterFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        //centerTitle: true,
        elevation: 0.3,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.blue,
            size: 30.0,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        // leading: GestureDetector(
        //   child: const Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: Icon(
        //       Icons.add_circle_outline,
        //       size: 35,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   onTap: () => const PosCatalogFormWidget(),
        // ),
        title: const Text(
          "Fill Merchant Data",
          style: TextStyle(color: Colors.blue, fontSize: 17.0),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue, // navigation bar color
          statusBarColor: Colors.white, // status bar color
          statusBarBrightness: Brightness.dark, //status bar brigtness
          statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
          systemNavigationBarDividerColor:
              Colors.greenAccent, //Navigation bar divider color
          systemNavigationBarIconBrightness:
              Brightness.light, //navigation bar icon
        ),
      ),
      body: CustomScrollView(slivers: [MerchantRegisterFormNameWidget()]),
    );
  }
}
