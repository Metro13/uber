import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final Completer<GoogleMapController> _mapController = Completer();

  static const LatLng sourceLocation = LatLng(-13.9657216, 33.7739776);
  static const LatLng destination = LatLng(13.9657216, 33.7739776);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  size: 25,
                ))
          ],
          title: const Text(
            'Choose a ride',
            style: TextStyle(color: Colors.black),
          ),
          leading: const IconButton(onPressed: null, icon: Icon(Icons.menu)),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              const GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: sourceLocation, zoom: 14.5)),
              Container(
                height: 30,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: IconButton(
                    onPressed: (() {
                      showModalBottomSheet(
                          barrierColor: Colors.transparent,
                          context: context,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 350,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: IconButton(
                                        onPressed: (() {
                                          Navigator.pop(context);
                                        }),
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: Colors.black,
                                        )),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.local_taxi_outlined,
                                          size: 40,
                                          color: Colors.yellow,
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Economy Ride',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '4 Seater',
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '£10',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.local_taxi_outlined,
                                          size: 40,
                                          color: Colors.blue[400],
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Standard Ride',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '4 Seater',
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '£20',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.local_taxi_outlined,
                                            size: 40, color: Colors.green),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Premium Ride',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '4 Seater',
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '£30',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider()
                                ],
                              ),
                            );
                          });
                    }),
                    icon: const Icon(
                      Icons.keyboard_arrow_up_sharp,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ));
  }
}
