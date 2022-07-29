import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PartnerMapWidget extends StatefulWidget {
  PartnerMapWidget({Key? key}) : super(key: key);

  @override
  State<PartnerMapWidget> createState() => _PartnerMapWidgetState();
}

class _PartnerMapWidgetState extends State<PartnerMapWidget> {
  List<Marker> _markers = <Marker>[];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerListBloc, PartnerListState>(
        builder: ((context, state) {
      return state.status.when(
          initial: () => Container(),
          success: (data) {
            data?.forEach((e) {
              _markers.add(Marker(
                  //icon: BitmapDescriptor.hueAzure.round(),
                  markerId: MarkerId(e.id),
                  position: LatLng(e.latitude, e.longitude),
                  infoWindow: InfoWindow(title: e.name)));
            });
            return GoogleMap(
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
              onMapCreated: (controller) async {},
            );
          },
          loading: () => Align(
                  child: Text(
                "Sedang Mengambil Data...",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blue,
                ),
              )),
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
                //padding: EdgeInsets.only(bottom: _pad, top: _pad1),
                onMapCreated: (controller) async {},
              ));
    }));
  }
}
