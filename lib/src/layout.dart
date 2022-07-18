import 'package:flutter/material.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/body.dart';
import 'package:sidebarx/sidebarx.dart';

class WideView extends StatelessWidget {
  WideView({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0);

  @override
  Widget build(BuildContext context) {
    var main_width = MediaQuery.of(context).size.width;
    var main_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Row(children: [
        WideSidebarConfig(controller: _controller),
        Expanded(
            flex: 1,
            child: Container(
              child: SizedBox(
                height: main_height,
              ),
            )),
        Expanded(flex: 30, child: Body(controller: _controller)),
      ]),
    );
  }
}

class WideSidebarConfig extends StatelessWidget {
  const WideSidebarConfig({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: defaultAmber,
          borderRadius: BorderRadius.circular(10),
        ), // Default sidebar config => border
        textStyle: const TextStyle(color: Colors.white),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        // itemDecoration: BoxDecoration(
        //   border: Border.all(color: defaultAmberB),
        // ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
        margin: EdgeInsets.only(right: 10),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/avatar.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            debugPrint('Call HOME');
          },
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Search',
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'People',
        ),
        const SidebarXItem(
          icon: Icons.wheelchair_pickup,
          label: 'Favorite',
        ),
      ],
    );
  }
}
class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MobileView")),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 800,
            minWidth: 400,
          ),
          child: Container(
            width: 400,
            color: Colors.red,
            child: Stack(
              children: [
                Container(
                  child: Text("Hello"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
