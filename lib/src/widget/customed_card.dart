import 'package:flutter/material.dart';
import 'package:toilet_get_info/constants.dart';
import 'custom_icon.dart';


///Fittedbox 를 쓰면 잘 맞춰준다.
///

class customCard extends StatefulWidget {
  final customIcon iconSet; //for init;
  final String title;
  final int number;
  final String unit;

  customCard({
    required this.iconSet,
    required this.title,
    required this.number,
    required this.unit, 
    Key? key}) : super(key: key);

  @override
  State<customCard> createState() => _customCardState();
}

class _customCardState extends State<customCard> {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(width*0.005),
      child: Container(
        constraints: BoxConstraints(
          minWidth:  0.05*width, 
          maxWidth:  0.2*width,
          minHeight: 0.05*height,
          maxHeight: 0.2*width,
        ),
        height: 0.14*width,
        decoration: elementDeco, //border, shaddow, backgroundcolor 
        //margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
             Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FittedBox(
                    fit:BoxFit.fitHeight,
                    child: widget.iconSet),
                  SizedBox(width: 10,),
                  FittedBox(
                    fit:BoxFit.fitWidth,
                    child: Text(widget.title,style: smTitle,))
                ],
                )
              ),
              Expanded(
                flex:2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    FittedBox(
                      fit:BoxFit.contain,
                      child: Text(widget.number.toString(),
                      textAlign: TextAlign.end,
                      style: lgNumber,),
                    ),
                    FittedBox(
                      fit:BoxFit.contain,
                      child: Text(widget.unit,style: smTitle.copyWith(fontSize: 28),))
                  ],)),  
              SizedBox(height:10)
            ],
          ),
        ),
      ),
    );
  }
}

class customCardsm extends StatefulWidget {
  final customIcon iconSet; //for init;
  final String title;
  final int number;
  final String unit;

  customCardsm({
    required this.iconSet,
    required this.title,
    required this.number,
    required this.unit, 
    Key? key}) : super(key: key);

  @override
  State<customCardsm> createState() => _customCardsmState();
}

class _customCardsmState extends State<customCardsm> {
  


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        constraints: 
        BoxConstraints(
          maxWidth:0.12*width, 
          minWidth: 0.05*width,
          maxHeight:0.12*width, 
          minHeight: 0.05*width, 

        ),
        decoration: elementDeco, //border, shaddow, backgroundcolor 
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
             Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widget.iconSet,
                  SizedBox(width: 9,),
                  FittedBox(
                    fit:BoxFit.fitWidth,
                    child: Text(widget.title,
                    style: smTitle,
                    ))
                ],
                )
              ),
              Expanded(
                flex:2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Expanded(
                      child: SizedBox(height: 3,)),
                    Expanded(
                      child: Container(
                        height: 0.05*height,
                        child: FittedBox(
                          //alignment: Alignment.bottomRight,
                          fit: BoxFit.contain,
                          child: Text(widget.number.toString(),
                          textAlign: TextAlign.end,
                          style: mdNumber,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(widget.unit,style: smTitle,)),
                    )
                  ],))  
            ],
          ),
        ),
      ),
    );
  }
}

class customCardsmRv extends StatefulWidget {
  final customIcon iconSet; //for init;
  final String title;
  final int number;
  //final String unit;
  final Color backgroundColor;

  customCardsmRv({
    required this.iconSet,
    required this.title,
    required this.number,
    //required this.unit,
    required this.backgroundColor, 
    Key? key}) : super(key: key);

  @override
  State<customCardsmRv> createState() => _customCardsmRvState();
}

class _customCardsmRvState extends State<customCardsmRv> {
  


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        width: 0.1*width,
        height: 0.1*width,
        decoration: elementDeco.copyWith(
          color: widget.backgroundColor
        ), //border, shaddow, backgroundcolor 
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
           Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.iconSet,
              ],
              )
            ),
            Expanded(
              flex:2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: FittedBox(
                        fit:BoxFit.contain,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(widget.title,style: smTitle.copyWith(
                            fontSize:10,
                            color:widget.iconSet.colorIcon,
                            )
                            ),
                        ),
                      ))),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(widget.number.toString(),
                        textAlign: TextAlign.center,
                        style: mdNumber.copyWith(
                          color:widget.iconSet.colorIcon,
                        )
                        ,),
                      ),
                    )),
                ],))  
          ],
        ),
      ),
    );
  }
}