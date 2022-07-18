import 'package:flutter/material.dart';

class WebViewAppBar extends StatelessWidget {
  const WebViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("WebViewAppBar")
    );
  }
}



class MobileViewAppBar extends StatelessWidget {
  const MobileViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("MobileViewAppBar")
    );
  }
}