import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  
const customIcon(
    {
      required this.targetIcon, 
      required this.colorBackground, 
      required this.colorIcon,
      Key? key, 
    }) : super(key: key);
  
  final IconData targetIcon;
  final Color colorBackground;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(10)
      ),
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Icon(
          targetIcon,
          color: colorIcon
        ),
      ),
    );
  }
}
