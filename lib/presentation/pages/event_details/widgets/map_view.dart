import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
  
    return GoogleMap( 
                    zoomGesturesEnabled: true, 
                    initialCameraPosition: _kGooglePlex,
                    // markers: markers, //markers to show on map
                    mapType: MapType.normal, 
                    onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
              );
  }
}