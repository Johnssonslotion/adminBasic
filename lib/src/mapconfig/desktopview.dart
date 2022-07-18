import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:toilet_get_info/constants.dart';




class desktopView extends StatefulWidget {
  const desktopView({Key? key}) : super(key: key);

  

  @override
  State<desktopView> createState() => _desktopViewState();
}

class _desktopViewState extends State<desktopView> {


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
  /////





  /////
  /////
  @override
  Widget build(BuildContext context) {
    //// building setting
    return FutureBuilder(
        future: _fetch1(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData == false) {
        return Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Desktop Loading", style: smTitle),
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
            Text("Desktop Loading fail : ${snapshot.hasError}", style: smTitle),
          ],
        ));
      } else {
        ////
        ///
        /// Real part WEBVIEW
        /// 
        /// 
        return Container(
          child: Text("Desktop view는 지원되지 않습니다.", style: smTitle,)
        
        );
      }
    }); //FutureBuilder Section
  }
}
