import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _pad = 0;
  double _pad1 = 0;
  bool _yes = false;
  List<Marker> _markers = <Marker>[];
  GoogleMapController _controller;
  @override
  void initState() {
    _markers.add(Marker(
        //icon: BitmapDescriptor.hueAzure.round(),
        markerId: MarkerId('SomeId'),
        position: LatLng(-6.104775396020383, 106.92947475767201),
        infoWindow: InfoWindow(title: 'The title of the marker')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("OK $_pad");
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_pad == 0) _yes = true;

          debugPrint("VVVVV PADDDDDDDDDDDD $_yes");
          setState(() {
            _pad = 200;
            _pad1 = 40;
          });
          _controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(-6.104775396020383, 106.92947475767201),
                  zoom: 15)));
        },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          GoogleMap(
            rotateGesturesEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(-6.104775396020383, 106.92947475767201),
              zoom: 14,
            ),
            onCameraMoveStarted: () {
              debugPrint("OKKKKKKKKKKK");
              //setState(() {
              //_pad = 0;
              //_pad1 = 0;
              //});
              setState(() {
                _pad = 200;
                _pad1 = 40;
              });
              setState(() {
                _pad = 0;
                _pad1 = 0;
              });
            },
            onCameraIdle: () async {
              debugPrint("VVVVV $_yes");
              setState(() {
                _pad = 200;
                _pad1 = 40;
              });

              if (_yes == true) {
                _yes = false;
                _controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: LatLng(-6.104775396020383, 106.92947475767201),
                        zoom: 15)));
              }

              // await Future.delayed(Duration(milliseconds: 100));

              // setState(() {
              //   _pad = 0;
              //   _pad1 = 40;
              // });
            },
            markers: Set<Marker>.of(_markers),
            padding: EdgeInsets.only(bottom: _pad, top: _pad1),
            onMapCreated: (controller) async {
              _controller = controller;
              //await Future.delayed(Duration(milliseconds: 2000));

              setState(() {});
              // _controller.animateCamera(CameraUpdate.newCameraPosition(
              //     CameraPosition(
              //         target: LatLng(-6.104775396020383, 106.92947475767201),
              //         zoom: 15)));
              _pad = 200;
              _pad1 = 40;
            },
            // onCameraMove: (position) {
            //   if (_pad == 0) {
            //     setState(() {
            //       _pad = 200;
            //       _pad1 = 40;
            //     });
            //   }
            //   debugPrint('${position.target}');
            // },
          ),
          Positioned.fill(
            bottom: kToolbarHeight + 160,
            child: Align(
              child: Icon(
                Icons.location_pin,
                size: 45,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TestOke {
  String c;
  String y;
  final String v;

  TestOke({
    @required this.c,
    @required this.y,
    @required this.v,
  });
}
