import 'package:flutter/material.dart';

class MerchantRegisterFormNameWidget extends StatefulWidget {
  const MerchantRegisterFormNameWidget({Key? key}) : super(key: key);

  @override
  State<MerchantRegisterFormNameWidget> createState() =>
      _MerchantRegisterFormNameWidgetState();
}

class _MerchantRegisterFormNameWidgetState
    extends State<MerchantRegisterFormNameWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
          controller: _controller,
          autofocus: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            errorText: null,
            icon: const Icon(
              Icons.sms_outlined,
              color: Colors.blue,
              size: 26.0, /*Color(0xff224597)*/
            ),
            labelText: "Name",
            labelStyle: const TextStyle(color: Colors.black54, fontSize: 15.0),
            hintText: '',
            //enabledBorder: InputBorder.none,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),

            //border: InputBorder.none,
          ),
          onChanged: (v) => null),
    ));
  }
}
