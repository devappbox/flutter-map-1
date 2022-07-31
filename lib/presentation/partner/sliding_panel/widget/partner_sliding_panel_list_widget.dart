import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'partner_sliding_panel_list_card_widget.dart';

class PartnerSlidingPanelListWidget extends StatefulWidget {
  final AutoScrollController autoScrollController;
  PartnerSlidingPanelListWidget({Key? key, required this.autoScrollController})
      : super(key: key);

  @override
  State<PartnerSlidingPanelListWidget> createState() =>
      _PartnerSlidingPanelListWidgetState();
}

class _PartnerSlidingPanelListWidgetState
    extends State<PartnerSlidingPanelListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerListBloc, PartnerListState>(
        builder: ((context, state) {
      return state.status.when(
          loading: () => SliverToBoxAdapter(
                child: Align(
                    child: Text(
                  "Collecting Data...",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )),
              ),
          failure: (failure) => SliverToBoxAdapter(
                child: Align(
                    child: Text(
                  "Terjadi Kesalahan, ${FailureExceptions.getErrorMessage(failure)}",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )),
              ),
          success: (data) => data != null
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return PartnerSlidingPanelListCard(
                          autoScrollController: widget.autoScrollController,
                          partner: data[index],
                          index: index);
                    },
                    childCount: data.length,
                  ),
                )
              : SliverToBoxAdapter(
                  child: Align(
                      child: Text(
                    "Tidak Ada Data",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                  )),
                ),
          initial: () => SliverToBoxAdapter(
                child: Container(),
              ));
    }));
  }
}
