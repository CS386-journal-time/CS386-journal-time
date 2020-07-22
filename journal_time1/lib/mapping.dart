import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';

Widget _googleMap(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:GoogleMap(
      mapType: MapTupe.normal,
      initialCameraPosition: CameraPosition(target: LatLng(latitude, longitude)),
      onMapCreated: (GoogleMapController controller)(

      )
    )
  );
}