import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/cubit/partner_sliding_panel_cubit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PartnerMapWidget extends StatefulWidget {
  PartnerMapWidget({Key? key}) : super(key: key);

  @override
  State<PartnerMapWidget> createState() => _PartnerMapWidgetState();
}

class _PartnerMapWidgetState extends State<PartnerMapWidget> {
  late GoogleMapController _googleMapController;
  Completer<GoogleMapController> _controller = Completer();
  double _pad = 0.0;
  late LatLng _latlong;

  @override
  void initState() {
    super.initState();
    _latlong = LatLng(-6.1512628884473175, 106.89188416785417);
  }

  @override
  void dispose() {
    _googleMapController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
            listenWhen: (p, c) {
          return p.tap != c.tap;
        }, listener: (context, state) {
          _latlong = LatLng(state.latitude!, state.longitude!);
          _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(state.latitude!, state.longitude!),
                  zoom: 17)));

          _googleMapController
              .showMarkerInfoWindow(MarkerId(state.markerId ?? ""));
        }),
        BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
            listenWhen: (p, c) {
          return p.expand != c.expand;
        }, listener: (context, state) async {
          late double pad;
          if (state.expand == false) {
            pad = 0.0;
          } else {
            pad = 200.0;
          }
          setState(() {
            _pad = pad;
          });
          final zoom = await _googleMapController.getZoomLevel();
          await Future.delayed(Duration(milliseconds: 50));
          _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: _latlong, zoom: zoom)));
        })
      ],
      child: BlocBuilder<PartnerListBloc, PartnerListState>(
          builder: ((context, state) {
        return state.status.when(
            initial: () => Container(),
            success: (data) {
              List<Marker> _markers = <Marker>[];
              _markers.add(Marker(
                  onTap: () {},
                  //icon: BitmapDescriptor.hueAzure.round(),
                  markerId: MarkerId('myId'),
                  position: LatLng(-6.1512628884473175, 106.89188416785417),
                  infoWindow: InfoWindow(title: "I Am Here/My Location")));
              data?.forEach((e) {
                _markers.add(Marker(
                    onTap: () {
                      context
                          .read<PartnerSlidingPanelCubit>()
                          .onTapMarker(e.id);
                    },
                    //icon: BitmapDescriptor.hueAzure.round(),
                    markerId: MarkerId(e.id),
                    position: LatLng(e.latitude, e.longitude),
                    infoWindow: InfoWindow(title: e.name)));
              });
              return GoogleMap(
                onCameraMove: (position) {
                  _latlong = LatLng(
                      position.target.latitude, position.target.longitude);
                  //debugPrint("$_latlong");
                },
                buildingsEnabled: false,
                rotateGesturesEnabled: false,
                //myLocationEnabled: true,
                //myLocationButtonEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: LatLng(-6.1512628884473175, 106.89188416785417),
                  zoom: 14,
                ),
                markers: Set<Marker>.of(_markers),
                padding: EdgeInsets.only(bottom: _pad),
                onMapCreated: (controller) async {
                  _googleMapController = controller;
                  _controller.complete(controller);
                  await Future.delayed(Duration(milliseconds: 100));
                  // setState(() {});
                  // _pad = 200;

                  await Future.delayed(Duration(milliseconds: 100));
                  _googleMapController.animateCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                          target:
                              LatLng(-6.1512628884473175, 106.89188416785417),
                          zoom: 14)));
                },
              );
            },
            loading: () => GoogleMap(
                  buildingsEnabled: false,
                  rotateGesturesEnabled: false,
                  //myLocationEnabled: true,
                  //myLocationButtonEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(-6.1512628884473175, 106.89188416785417),
                    zoom: 14,
                  ),
                  //markers: Set<Marker>.of(_markers),
                  padding: EdgeInsets.only(bottom: _pad),
                  onMapCreated: (controller) async {
                    _googleMapController = controller;
                    _controller.complete(controller);
                    await Future.delayed(Duration(milliseconds: 100));
                    // setState(() {});
                    // _pad = 200;

                    await Future.delayed(Duration(milliseconds: 100));
                    _googleMapController.animateCamera(
                        CameraUpdate.newCameraPosition(CameraPosition(
                            target:
                                LatLng(-6.1512628884473175, 106.89188416785417),
                            zoom: 14)));
                  },
                ),
            failure: (f) => GoogleMap(
                  buildingsEnabled: false,
                  rotateGesturesEnabled: false,
                  //myLocationEnabled: true,
                  //myLocationButtonEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(-6.1512628884473175, 106.89188416785417),
                    zoom: 14,
                  ),
                  //markers: Set<Marker>.of(_markers),
                  padding: EdgeInsets.only(bottom: _pad),
                  onMapCreated: (controller) async {
                    _googleMapController = controller;
                    _controller.complete(controller);
                    await Future.delayed(Duration(milliseconds: 100));
                    // setState(() {});
                    // _pad = 200;

                    await Future.delayed(Duration(milliseconds: 100));
                    _googleMapController.animateCamera(
                        CameraUpdate.newCameraPosition(CameraPosition(
                            target:
                                LatLng(-6.1512628884473175, 106.89188416785417),
                            zoom: 14)));
                  },
                ));
      })),
    );
  }
}
