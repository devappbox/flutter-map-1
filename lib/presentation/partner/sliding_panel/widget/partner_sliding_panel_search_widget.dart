import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/common/colors.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/cubit/partner_sliding_panel_cubit.dart';

class PartnerSlidingPanelSearchWidget extends StatefulWidget {
  const PartnerSlidingPanelSearchWidget({Key? key}) : super(key: key);

  @override
  State<PartnerSlidingPanelSearchWidget> createState() =>
      _PartnerSlidingPanelSearchWidgetState();
}

class _PartnerSlidingPanelSearchWidgetState
    extends State<PartnerSlidingPanelSearchWidget> {
  late TextEditingController _controller;
  bool _textFilled = false;
  late FocusNode _focusNode;
  bool _isExpand = false;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
      listenWhen: (p, c) => p.expand != c.expand,
      listener: (context, state) {
        setState(() {
          _isExpand = state.expand;
        });
      },
      child: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[50],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.00),
                    topLeft: Radius.circular(40.00))),
            child: Row(
              children: [
                _isExpand == false
                    ? GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 25.0,
                        ),
                      )
                    : GestureDetector(
                        onTap: () => context
                            .read<PartnerSlidingPanelCubit>()
                            .onExpand(false),
                        child: Icon(
                          Icons.arrow_downward_outlined,
                          size: 25.0,
                        ),
                      ),
                // SizedBox(
                //   width: 2.0,
                // ),
                Expanded(
                  //flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                        child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        focusNode: _focusNode,
                        onChanged: ((value) {
                          context
                              .read<PartnerListBloc>()
                              .add(ChangedKeyWordEvent(keyWord: value));
                          if (value.isNotEmpty) {
                            if (_textFilled == false) {
                              setState(() {
                                _textFilled = true;
                              });
                            }
                          } else {
                            if (_textFilled == true) {
                              setState(() {
                                _textFilled = false;
                              });
                            }
                          }
                        }),
                        onTap: () async {},
                        controller: _controller,
                        //autofocus: true,
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          suffixIcon: _textFilled
                              ? GestureDetector(
                                  onTap: () {
                                    context
                                        .read<PartnerListBloc>()
                                        .add(ChangedKeyWordEvent(keyWord: ""));
                                    _controller.text = "";
                                    FocusScope.of(context)
                                        .requestFocus(_focusNode);
                                    setState(() {
                                      _textFilled = false;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    size: 23,
                                  ))
                              : null,
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search Our Partners...",
                          //hintTextDirection: TextDirection.ltr,
                          alignLabelWithHint: true,
                          hintStyle: const TextStyle(
                              fontSize: 13.0,
                              color: Color.fromARGB(255, 174, 173, 224)),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(
                              top: 15), // control your hints text size
                          //contentPadding: const EdgeInsets.symmetric(vertical: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: AppColors.searchBorderSideColor,
                                width: 0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.searchBorderSideColor,
                                width: 0.5),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: AppColors.searchBorderSideColor,
                                width: 0.5),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 12, top: 10),
                            child: Icon(Icons.search_outlined

                                // SvgPicture.asset(
                                //   "assets/icons/Search.svg",
                                // ),
                                ),
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
