import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/mapconfig/desktopview.dart';
import 'package:toilet_get_info/src/mapconfig/webview.dart';




class statisticMap extends StatelessWidget {
  const statisticMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * 0.4,
        height: height * 0.5,
        decoration: elementDeco,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MapBuilder())),
    );
  }
}


class MapBuilder extends StatelessWidget {
  
  MapBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int map_platform_controller = (kIsWeb)? 0:(Platform.isWindows || Platform.isLinux || Platform.isMacOS)? 1:2; 

    switch (map_platform_controller) {
      case 0:
        return Container(
          child: Center(
            child: mapwebView()
            ));
      case 1:
        return Container(
          child: Center(
            child: desktopView()
        ));
      case 2:
        return Container(
          child: Center(
            child: Text(" Mobile app loaded ",style: smTitle,))
            );
      default:
        return Container(
          child: Center(
            child: Text(" Malfunction, plz call admin ",style: smTitle)),
        );
    }
  }
}















//statisticMap()

// class statisticMap extends StatefulWidget {
//   const statisticMap({Key? key}) : super(key: key);

  

//   @override
//   State<statisticMap> createState() => _statisticMapState();
// }

// class _statisticMapState extends State<statisticMap> {
//     //final Completer<GoogleMapController> _controller = Completer();
//     static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     final int map_platform_controller = (kIsWeb)? 0:(Platform.isWindows || Platform.isLinux || Platform.isMacOS)? 1:2; 
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;

//      return Container(
//       child: 
      
      
//       GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           //_controller.complete(controller);
//         },
//      ));
//   }
// }

