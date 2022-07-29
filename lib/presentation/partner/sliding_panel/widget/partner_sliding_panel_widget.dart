import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/map/widget/partner_map_widget.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/cubit/partner_sliding_panel_cubit.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../delegate/sliding_panel_search_delegate.dart';
import 'partner_sliding_panel_list_widget.dart';

class PartnerSlidingPanelWidget extends StatefulWidget {
  PartnerSlidingPanelWidget({Key? key}) : super(key: key);

  @override
  State<PartnerSlidingPanelWidget> createState() =>
      _PartnerSlidingPanelWidgetState();
}

class _PartnerSlidingPanelWidgetState extends State<PartnerSlidingPanelWidget> {
  PanelController _panelController = PanelController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
        listenWhen: (p, c) => p.expand != c.expand,
        listener: (context, state) {
          if (state.expand == false) {
            _panelController.close();
          }
        },
        child: SlidingUpPanel(
          controller: _panelController,
          onPanelOpened: () =>
              context.read<PartnerSlidingPanelCubit>().onExpand(true),
          onPanelClosed: () =>
              context.read<PartnerSlidingPanelCubit>().onExpand(false),
          header: Container(
            decoration: BoxDecoration(
                color: Colors.grey[50],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.00),
                    topLeft: Radius.circular(40.00))),
            width: MediaQuery.of(context).size.width,
            height: 30,
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 65,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ),
          isDraggable: true,
          minHeight: 90,
          maxHeight: 450,
          //snapPoint: 0.5,
          //panelSnapping: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          //panelBuilder: (c) {
          //return
          panel: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: CustomScrollView(
                  //controller: c,
                  slivers: [
                    // SliverToBoxAdapter(
                    //   child: SizedBox(
                    //     height: 30,
                    //   ),
                    // ),
                    SliverPersistentHeader(
                        pinned: true,
                        //floating: true,
                        delegate: SlidingPanelSearchDelegate()),
                    PartnerSlidingPanelListWidget()
                  ],
                ),
              ),
            ],
          ),
          //},
          body: PartnerMapWidget(),
        ));
  }
}
