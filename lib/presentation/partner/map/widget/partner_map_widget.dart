import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PartnerMapWidget extends StatefulWidget {
  PartnerMapWidget({Key? key}) : super(key: key);

  @override
  State<PartnerMapWidget> createState() => _PartnerMapWidgetState();
}

class _PartnerMapWidgetState extends State<PartnerMapWidget> {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
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
    );
  }
}
