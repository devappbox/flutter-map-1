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
  double _pad = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _googleMapController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PartnerSlidingPanelCubit, PartnerSlidingPanelState>(
        listenWhen: (p, c) {
      return p.tap != c.tap;
    }, listener: (context, state) {
      _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(state.latitude!, state.longitude!), zoom: 17)));

      _googleMapController.showMarkerInfoWindow(MarkerId(state.markId ?? ""));
    }, child: BlocBuilder<PartnerListBloc, PartnerListState>(
            builder: ((context, state) {
      debugPrint("OKKKKKKKKKKKKKKKKKKK");
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
                  onTap: () {},
                  //icon: BitmapDescriptor.hueAzure.round(),
                  markerId: MarkerId(e.id),
                  position: LatLng(e.latitude, e.longitude),
                  infoWindow: InfoWindow(title: e.name)));
            });
            return GoogleMap(
              padding: EdgeInsets.only(bottom: _pad),
              buildingsEnabled: false,
              rotateGesturesEnabled: false,
              //myLocationEnabled: true,
              //myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(-6.1512628884473175, 106.89188416785417),
                zoom: 14,
              ),
              markers: Set<Marker>.of(_markers),
              //padding: EdgeInsets.only(bottom: _pad, top: _pad1),
              onMapCreated: (controller) async {
                _googleMapController = controller;
                _controller.complete(controller);
                await Future.delayed(Duration(milliseconds: 100));
                setState(() {});
                _pad = 200;

                await Future.delayed(Duration(milliseconds: 100));
                _googleMapController.animateCamera(
                    CameraUpdate.newCameraPosition(CameraPosition(
                        target: LatLng(-6.1512628884473175, 106.89188416785417),
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
                  setState(() {});
                  _pad = 200;

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
                  setState(() {});
                  _pad = 200;

                  await Future.delayed(Duration(milliseconds: 100));
                  _googleMapController.animateCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                          target:
                              LatLng(-6.1512628884473175, 106.89188416785417),
                          zoom: 14)));
                },
              ));
    })));
  }
}
