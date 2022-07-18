import 'package:flutter/material.dart';
import 'package:toilet_get_info/src/admin_dashboard/admin_control.dart';
import 'package:toilet_get_info/src/layout.dart';
import 'constants.dart';
import 'dart:io';
import 'package:window_size/window_size.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){

    runApp(const Info());

  }else if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("ouRest");
    setWindowMinSize(const Size(1440, 800));
    setWindowMaxSize(const Size(1920, 1080));
    //setWindowSize(Size(1024, 800));

    runApp(const Info());
  }
  
}


class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primaryColor: primaryColors,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColors,
      ),
        home: MultiProvider( 
          providers: [
            //DashBoard Page Provider
            ChangeNotifierProvider(
                  create: (BuildContext context) => adminControl()),
          ],
          child: Contents()
          )
      );
  }
}


class Contents extends StatelessWidget {
  const Contents({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
          
          final width= constraints.maxWidth;
          final height=constraints.maxHeight;
          final ratio=width / height;
          if (width >= 700){
            return WideView();
          } else {
            return MobileView(); 
          } 
        }
    );
  }
}

