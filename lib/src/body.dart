import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/main.dart';
import 'package:toilet_get_info/src/admin_dashboard/admin_control.dart';
import 'package:toilet_get_info/src/admin_dashboard/admin_map_view.dart';
import 'package:toilet_get_info/src/admin_dashboard/admin_statistics_view.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            final _controller = Provider.of<adminControl>(context,listen: true);
            //adminController 포함;
            return commonBody(
              title: "대시보드", 
              first: DashSection1(), 
              second: DashSection2(),
              );
          case 1:
            return Text(
              'Search',
              style: theme.textTheme.headline5,
            );
          case 2:
            return Text(
              'People',
              style: theme.textTheme.headline5,
            );
          case 3:
            return Text(
              'Favorites',
              style: theme.textTheme.headline5,
            );
          default:
            return Text(
              'Not found page',
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}

class commonBody extends StatelessWidget {
  
  final String title;
  final Widget first;
  final Widget second;

  commonBody({
    required this.title,
    required this.first,
    required this.second,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topView(
            title: title),
          bodyView(
            first:first,
            second:second,
          ),
        ],
      ),
    );
  }
}

//DashSection1(),


class topView extends StatelessWidget {
  final String title;
  topView({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 10, 10),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              height: 0.05 * height,
              child: Text(
                textAlign:TextAlign.end,
                title, style: lgTitle.copyWith(fontSize: 32)
                ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 70, 10),
                child: FittedBox(
                  fit:BoxFit.fitHeight,
                  child: Text("controller")),
              )
            ],
          ),
        )
      ],
    );
  }
}

class bodyView extends StatelessWidget {
  final Widget first;
  final Widget second; 
  bodyView({
    required this.first,
    required this.second,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Expanded(
          flex:1,
          child: Container(
            child: first
          ),
        ),
        Expanded(
          flex:1,
          child: Container(
            child: second
          ),
        ),
      ],
    );
  }
}





// class MultiAddressSelection extends StatefulWidget {
//   const MultiAddressSelection({Key? key}) : super(key: key);

//   @override
//   State<MultiAddressSelection> createState() => _MultiAddressSelectionState();
// }

// class _MultiAddressSelectionState extends State<MultiAddressSelection> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//             builder: builder
//             )
//   }
// }



