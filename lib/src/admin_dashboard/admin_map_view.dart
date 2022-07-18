import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/mapconfig/statistic_map.dart';
import 'package:toilet_get_info/src/widget/custom_icon.dart';
import 'package:toilet_get_info/src/widget/customed_card.dart';
import 'package:toilet_get_info/src/widget/customed_card_long.dart';

class DashSection2 extends StatelessWidget {
  const DashSection2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customCardMid(
            first: customCardsmRv(
              iconSet: customIcon(
                targetIcon: Icons.cleaning_services,
                colorBackground: Colors.white,
                colorIcon: colorL1
                ), 
              title: "청소요청",
              number: 30, 
              backgroundColor: colorL1B),
              second: customCardsmRv(
              iconSet: customIcon(
                targetIcon: Icons.cleaning_services,
                colorBackground: Colors.white,
                colorIcon: colorL2
                ), 
              title: "수리요청",
              number: 30, 
              backgroundColor: colorL2B),
              third: customCardsmRv(
              iconSet: customIcon(
                targetIcon: Icons.cleaning_services,
                colorBackground: Colors.white,
                colorIcon: colorL3
                ), 
              title: "긴급요청",
              number: 45, 
              backgroundColor: colorL3B)
            ),
          statisticMap(),
          //ChangeNotifierProvider(create: create)
        ],
      ),
    );
  }
}

















