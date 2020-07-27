import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallergy_saver/image_gallery_saver.dart';

ScreenshotController screenshotController = ScreenshotController();

Screenshot(
  controller: screenshotController,
  child: class mapping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Location',
    );
  }
}

AppBar _buildAppBar() {
  return AppBar (
    backgroundColor: Colors.blue,
    title: Text (
      "Map".toUpperCase(),
      style: TextStyle(fontSize: 20.0, color: Colors.black),
    ),
    automaticallyImplyLeading: false,
    centerTitle: true,
  );
}
LatLng _center = LatLng(40.762681, -73.832611);
FlutterMap _buildMap() {
  return FlutterMap (
    options: new MapOptions (
      minZoom: 15.0,
      center: _center,
      interactive: true,
    ),
    layers: [
      new TileLayerOptions(
          urlTemplate:
          'https://api.mapbox.com/styles/v1/shelbysafari/ckd3d9fo12iox1iph5or16zk7/wmts?access_token=pk.eyJ1Ijoic2hlbGJ5c2FmYXJpIiwiYSI6ImNrZDNkOGoxNDB6d3gycG52cnRqZzdleGsifQ.PLUWkkOyGl0mm1rhB6FyWQ',
          additionalOptions: {
            'accessToken':
            'sk.eyJ1Ijoic2hlbGJ5c2FmYXJpIiwiYSI6ImNrZDNlY25ocDB5cnkydWw1Z2ZxMjl4N3QifQ.CmhL6ImgJWGHC35CWBxLeQ',
            'id': 'basic'
          }),
      new MarkerLayerOptions(markers: _buildMarkersOnMap()),
    ],
  );
}

List<Marker> _buildMarkersOnMap() {
  List<Marker> markers = List<Marker>();
  var marker = new Marker(
    point: _center,
    width: 279.0,
    height: 256.0,
    builder: (context) => _buildCustomMarker(),
  );
  markers.add(marker);
  return markers;

}

var infoWindowVisible = false;
GlobalKey<State> key = new GlobalKey();
Stack _buildCustomMarker() {
  return Stack(
    children: <Widget>[
      popup(),
      marker()
    ],
  );
}
Opacity popup() {
  return Opacity(
    opacity: infoWindowVisible ? 1.0 : 0.0,
    child: Container(
      alignment: Alignment.bottomCenter,
      width: 279.0,
      height: 256.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/ic_info_window.png"),
              fit: BoxFit.cover)),
    ),
  );
}
Opacity marker() {
  return Opacity(
    child: Container(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          'assets/images/ic_marker.png',
          width: 49,
          height: 65,
        )),
    opacity: infoWindowVisible ? 0.0 : 1.0,
  );
},
),

screenshotController.capture().then((File image) {
  setState(() {
    _imageFile = image;
});
}).catchError((onError) {
  print(onError);
});




