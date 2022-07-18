import 'dart:html';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;
//import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';


class mapwebView extends StatefulWidget {
  const mapwebView({Key? key, 
  // this.cookieManager
  }) : super(key: key);

//  final CookieManager? cookieManager;

  @override
  State<mapwebView> createState() => _mapwebViewState();
}

class _mapwebViewState extends State<mapwebView> {
 
  Future<String> _fetch1() async {
    await Future.delayed(Duration(seconds: 2));  
    return 'Call Data';
  }

  @override
  void initState() {
    super.initState();
    var isLoading=true;
  }

  @override
  void dispose() {
    super.dispose();
  }


  /////
  /////

  /////
  ////





  /////
  /////



  @override
  Widget build(BuildContext context) {
    //// building setting
    ///
    print("WebView building");
  
    return FutureBuilder(
        future: _fetch1(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData == false) {
        return Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("WebView Loading", style: smTitle),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(),
          ],
        ));
      } else if (snapshot.hasError) {
        return Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("WebView Loading fail : ${snapshot.hasError}", style: smTitle),
          ],
        ));
      } else {
        ////
        ///
        /// Real part WEBVIEW
        /// 
        /// 
        return Container(
          decoration: elementDeco,
          child: getMap()
        );
      }
    }); //FutureBuilder Section
  }


Widget getMap() {
  String htmlId = "7";

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
    final myLatlng = LatLng(36.593, 127.2924);

    final mapOptions = MapOptions()
      ..zoom = 15
      ..center = LatLng(36.593, 127.2924);

    final elem = DivElement()
      ..id = htmlId
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = 'none';

    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = 'Hello World!' //
      );

    return elem;
  });
  
  return HtmlElementView(viewType: htmlId);
}


  
}


  