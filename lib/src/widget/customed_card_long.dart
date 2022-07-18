import 'package:flutter/material.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/widget/custom_bar.dart';
import 'package:toilet_get_info/src/widget/customed_card.dart';
import 'custom_icon.dart';
import 'package:fl_chart/fl_chart.dart';



///
/// Stateful widget 전부 세팅을 어떻게 해야할지 고민해볼것
///

class customCardLong extends StatefulWidget {
  final customCardsm first;
  final customCardsm second;
  final customCardsm third;

  customCardLong({
    required this.first,
    required this.second,
    required this.third,
    
    Key? key}) : super(key: key);

  @override
  State<customCardLong> createState() => _customCardLongState();
}

class _customCardLongState extends State<customCardLong> {


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 0.4075*width,
        height: 0.14*width,
        decoration: elementDeco, //border, shaddow, backgroundcolor 
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.first,
              widget.second,
              widget.third,
            ],
          ),
        ),
      ),
    );
  }
}


class customCardLongthin extends StatefulWidget {
  final customCardbar first;
  final customCardbar second;
  // final customCardsm third;

  customCardLongthin({
    required this.first,
    required this.second,
    
    Key? key}) : super(key: key);

  @override
  State<customCardLongthin> createState() => _customCardLongthinState();
}

class _customCardLongthinState extends State<customCardLongthin> {


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 0.4 *width,
        height: 0.2 *height,
        decoration: elementDeco, //border, shaddow, backgroundcolor 
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.first,
              widget.second,
            ],
          ),
        ),
      ),
    );
  }
}


class customCardMid extends StatefulWidget {
  final customCardsmRv first;
  final customCardsmRv second;
  final customCardsmRv third;

  customCardMid({
    required this.first,
    required this.second,
    required this.third,
    
    Key? key}) : super(key: key);

  @override
  State<customCardMid> createState() => _customCardMidState();
}

class _customCardMidState extends State<customCardMid> {


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    
    return Padding(
      padding: EdgeInsets.all(10),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 0.2*width,
          maxWidth: 0.4*width,
        ),
        child: Container(
          height: height * 0.2,
          decoration: elementDeco, //border, shaddow, backgroundcolor 
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                        children: [
                          customIcon(
                            targetIcon: Icons.all_inbox_rounded, 
                            colorBackground: colorL1B, 
                            colorIcon: colorL1),
                          SizedBox(width: 10,),
                          Text("고객 요청",style: smTitle,),
                        ],
                      ),
                ),
                Divider(height: 2,),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.first,
                      widget.second,
                      widget.third,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


