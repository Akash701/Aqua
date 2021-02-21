import 'dart:async';
import 'package:aqua/PH%20Value.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:geolocator/geolocator.dart';
import 'Location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  final Position initialPosition;

  Maps(this.initialPosition);
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final GeolocatorService geoService = GeolocatorService();
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    geoService.getCurrentLocation().listen((position) {
      centerScreen(position);
    });
    super.initState();
  }

  Widget arrowKeys(iconData) {
    return IconButton(
      color: Colors.white,
      icon: Icon(iconData),
      iconSize: 40,
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF0A0D21),
        appBar: AppBar(
            backgroundColor: Color(0XFF0A0D21),
            title: Center(
              child: Text('BOAT LOCATION'),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Phvalue();
                }));
              },
              color: (Colors.white),
              child: Text(
                'CHECK',
                style: TextStyle(color: Color(0xFF007f00), fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(widget.initialPosition.latitude,
                        widget.initialPosition.longitude),
                    zoom: 18),
                mapType: MapType.satellite,
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  arrowKeys(Icons.arrow_upward_rounded),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      arrowKeys(Icons.arrow_back_rounded),
                      RawMaterialButton(
                        child: Text(
                          'STOP',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          print('Stop is Pressed');
                        },
                        constraints: BoxConstraints.tightFor(
                          width: 70.0,
                          height: 70.0,
                        ),
                        shape: CircleBorder(),
                        elevation: 15,
                        fillColor: Colors.red,
                      ),
                      arrowKeys(Icons.arrow_forward_rounded),
                    ],
                  ),
                  arrowKeys(Icons.arrow_downward_rounded),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> centerScreen(Position position) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(position.latitude, position.longitude), zoom: 18),
      ),
    );
  }
}

// RawMaterialButton(
// child: Text(
// 'CHECK',
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// constraints: BoxConstraints.tightFor(
// width: 70.0,
// height: 70.0,
// ),
// shape: CircleBorder(),
// elevation: 15,
// fillColor: Color(0xFF007f00),
// onPressed: (){
//
// },
// ),
