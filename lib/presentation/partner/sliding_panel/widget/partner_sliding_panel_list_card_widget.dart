import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:flutter_map/presentation/partner/sliding_panel/bloc/partner_sliding_panel_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PartnerSlidingPanelListCard extends StatefulWidget {
  final AutoScrollController autoScrollController;
  final Partner partner;
  final int index;
  PartnerSlidingPanelListCard(
      {Key? key,
      required this.autoScrollController,
      required this.partner,
      required this.index})
      : super(key: key);

  @override
  State<PartnerSlidingPanelListCard> createState() =>
      _PartnerSlidingPanelListCardState();
}

class _PartnerSlidingPanelListCardState
    extends State<PartnerSlidingPanelListCard> {
  @override
  Widget build(BuildContext context) {
    final me = -6.1651366269863335;
    final me1 = 106.87359415250097;

    double distanceInMeters = Geolocator.distanceBetween(
                me, me1, widget.partner.latitude, widget.partner.longitude)
            .round() /
        1000;
    return AutoScrollTag(
      controller: widget.autoScrollController,
      key: Key(widget.partner.id),
      index: widget.index,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
            context.read<PartnerSlidingPanelBloc>().add(
                TapPartnerSlidingPanelEvent(
                    latitude: widget.partner.latitude,
                    longitude: widget.partner.longitude,
                    markerId: widget.partner.id));
          },
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.partner.name,
                          style: TextStyle(fontSize: 14.0, color: Colors.blue),
                        ),
                      ),
                      //Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/image.jpg",
                            gaplessPlayback: true,
                            //fit: BoxFit.cover,
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(Icons.home_outlined),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(Icons.home_outlined)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.partner.address,
                  style: TextStyle(fontSize: 13.0, color: Colors.black),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Wrap(
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                    Text(
                      " $distanceInMeters Km",
                      style: TextStyle(fontSize: 13.0, color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.partner.phoneNumber,
                  style: TextStyle(fontSize: 13.0, color: Colors.blue),
                ),
                SizedBox(
                  height: 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                "Open",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Color.fromARGB(255, 33, 243, 121)),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Close",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                "09.00",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "17.00",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 30),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            textStyle: const TextStyle(fontSize: 15.0)),
                        onPressed: () {},
                        child: const Text('Book'),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 181, 171, 139),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            textStyle: const TextStyle(fontSize: 15.0)),
                        onPressed: () {},
                        child: Icon(Icons.shopping_bag_outlined),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
