import 'package:aqua/Location.dart';
import 'package:aqua/Map.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
//import 'Map.dart';

class MapPage extends StatelessWidget {
  final geoService = GeolocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => geoService.getInitialLocation(),
      child: MaterialApp(
        home: Consumer<Position>(
          builder: (context, position, widget) {
            return (position != null)
                ? Maps(position)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
