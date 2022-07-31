import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:flutter_map/presentation/partner/map/widget/partner_map_widget.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/cubit/partner_sliding_panel_cubit.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
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
  final _scrollDirection = Axis.vertical;

  late AutoScrollController _autoScrollController;

  @override
  void initState() {
    super.initState();
    _autoScrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: _scrollDirection);
  }

  @override
  void dispose() {
    _autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
            listenWhen: (p, c) => p.expand != c.expand,
            listener: (context, state) {
              if (state.expand == false) {
                _panelController.close();
              }
            }),
        BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
            listenWhen: (p, c) => p.tapMarker != c.tapMarker,
            listener: (context, state) {
              context.read<PartnerListBloc>().state.status.maybeWhen(
                  success: (r) {
                    int? index = r?.indexWhere((e) => e.id == state.markerId);
                    if (index != null) {
                      if (index != -1) {
                        _autoScrollController.scrollToIndex(index,
                            preferPosition: AutoScrollPosition.begin);
                      }
                    }
                  },
                  orElse: () => null);
            })
      ],
      child: SlidingUpPanel(
        controller: _panelController,
        onPanelOpened: () =>
            context.read<PartnerSlidingPanelCubit>().onExpand(true),
        onPanelClosed: () =>
            context.read<PartnerSlidingPanelCubit>().onExpand(false),
        header: GestureDetector(
          child: Container(
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
                controller: _autoScrollController,
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
                  PartnerSlidingPanelListWidget(
                      autoScrollController: _autoScrollController)
                ],
              ),
            ),
          ],
        ),
        //},
        body: PartnerMapWidget(),
      ),
    );
  }
}
