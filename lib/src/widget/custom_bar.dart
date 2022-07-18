import 'package:flutter/material.dart';
import 'package:toilet_get_info/constants.dart';
import 'package:toilet_get_info/src/widget/custom_icon.dart';



class customCardbar extends StatefulWidget {
  final customIcon iconSet; //for init;
  final String title;
  final int number;
  //final String unit;

  customCardbar({
    required this.iconSet,
    required this.title,
    required this.number,
    //required this.unit, 
    Key? key}) : super(key: key);

  @override
  State<customCardbar> createState() => _customCardbarState();
}

class _customCardbarState extends State<customCardbar> {
  


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        width: 0.4*width,
        height:0.05 * height,
        decoration: elementDeco, //border, shaddow, backgroundcolor 
        margin: EdgeInsets.all(1),
        child: Column(
          children: [
           Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  SizedBox(width: 10,),
                  widget.iconSet,
                  SizedBox(width: 10,),
                  Text(widget.title,style: smTitle,)
                ],),
                Row(children: [
                  Text(widget.number.toString() ,style: mdNumber
                  .copyWith(fontSize: 24),),
                  SizedBox(width: 20,),
                ],),
              ],
              )
            ),
            Expanded(
              flex:1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                ],))  
          ],
        ),
      ),
    );
  }
}