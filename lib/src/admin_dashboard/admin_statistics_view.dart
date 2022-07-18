import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/admin_dashboard/admin_control.dart';
import 'package:toilet_get_info/src/widget/custom_bar.dart';
import 'package:toilet_get_info/src/widget/custom_icon.dart';
import 'package:toilet_get_info/src/widget/customed_card.dart';
import 'package:toilet_get_info/src/widget/customed_card_long.dart';

class DashSection1 extends StatelessWidget {
  DashSection1({Key? key}) : super(key: key);
  ///////// designtemplate
  ///
  ///
  ///var statistics =

  late adminControl _controller;

  @override
  Widget build(BuildContext context) {

    _controller = Provider.of<adminControl>(context,listen: true); // 변동은 전역변수로 영향받아야함. 


    var theme = Theme.of(context);
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                customCard(
              iconSet: const customIcon(
                  targetIcon: Icons.wheelchair_pickup,
                  colorBackground: colorL1B,
                  colorIcon: colorL1),
              title: "총 장애인 화장실 수",
              unit: "개",
              number: 100,
            ),
            customCard(
              iconSet: const customIcon(
                  targetIcon: Icons.people,
                  colorBackground: humanB,
                  colorIcon: human),
              title: "담당 업체 수",
              unit: "개",
              number: 38,
            ),
              ],
            ),
            customCardLong(
              first: customCardsm(
                  iconSet: const customIcon(
                    targetIcon: Icons.cleaning_services_outlined,
                    colorBackground: colorL1,
                    colorIcon: colorL1B,
                  ),
                  title: "일 청소횟수",
                  number: 3,
                  unit: "회"),
              second: customCardsm(
                  iconSet: const customIcon(
                    targetIcon: Icons.cleaning_services_outlined,
                    colorBackground: colorL2,
                    colorIcon: colorL2B,
                  ),
                  title: "일 수리횟수",
                  number: 4,
                  unit: "회"),
              third: customCardsm(
                  iconSet: const customIcon(
                    targetIcon: Icons.cleaning_services_outlined,
                    colorBackground: warn,
                    colorIcon: warnB,
                  ),
                  title: "월 청소횟수",
                  number: 10,
                  unit: "회"),
            ),
            customCardLongthin(
            first: customCardbar(
              iconSet: customIcon(
                targetIcon: Icons.check_circle_outline,
                colorBackground: doneB, 
                colorIcon: done), 
              title: "청소완료 화장실", 
              number: 10),
            second: customCardbar(
              iconSet: customIcon(
                targetIcon: Icons.stop_circle,
                colorBackground: warnB, 
                colorIcon: warn), 
              title: "수리필요 화장실",
              number: 100)
          ),
          ],
        )
      ],
    );
  }
}
