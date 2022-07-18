import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const Color grayBlue = Color.fromARGB(255, 168, 179, 191);

const Color defaultBack = Color.fromARGB(255, 229, 229, 229);

const primaryColors = defaultAmber;

const scaffoldBackgroundColors = defaultBack;
const accentCanvasColors = Color(0xFF3E3E61);
const white = Colors.white;


final actionColors = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);

// final sm_title = GoogleFonts.getFont("notoSans",
//   color: Color.fromRGBO(88, 88, 88, 1),
//   textStyle: TextStyle(
//     fontWeight: FontWeight.bold,
//     fontSize: 25,
//   ));



const smTitle = TextStyle(
  color: Color.fromRGBO(88, 88, 88, 1),
  fontFamily: "NotoSansKr",
  fontWeight: FontWeight.bold,
  //fontSize: 18,
);


const lgTitle = TextStyle(
  color: Colors.black,
  fontFamily: "Apple Braille",
  fontWeight: FontWeight.bold,
  fontSize: 48,
);


const lgNumber = TextStyle(
  color: Colors.black,
  fontFamily: "Apple Braille",
  fontWeight: FontWeight.bold,
  fontSize: 96,
);

const mdNumber = TextStyle(
  color: Color.fromRGBO(88, 88, 88, 1),
  fontFamily: 'Apple Braille',
  fontWeight: FontWeight.bold,
  fontSize: 36,
);



final elementDeco=BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            const BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(10, 10),
                blurRadius: 40)
          ],
          color: const Color.fromRGBO(255, 255, 255, 1),
        );




final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
const canvasColor = Color(0xFF2E2E48);
const accentCanvasColor = Color(0xFF3E3E61);

const Color defaultAmber = Color.fromARGB(255, 252, 179, 29);
const Color defaultAmberB = Color.fromRGBO(255, 189, 62, 1);
const Color colorL1 =Color.fromRGBO(252, 176, 29, 1);
const Color colorL1C=Color.fromARGB(255, 221, 160, 37);
const Color colorL1B=Color.fromRGBO(255, 242, 223, 1);

const Color colorL2=Color.fromRGBO(231, 81, 255, 1);
const Color colorL2B=Color.fromRGBO(241, 223, 255 , 1);

const Color colorL3=Color.fromRGBO(252, 63, 63, 1);
const Color colorL3B=Color.fromRGBO(255, 223, 223, 1);

const Color human=Color.fromRGBO(29, 252, 252, 1);
const Color humanB=Color.fromRGBO(223, 245, 255, 1);

const Color warn=Color.fromRGBO(252, 176, 29, 1);
const Color warnB=Color.fromRGBO(255, 244, 223, 1);

const Color done=Color.fromRGBO(29,252, 132,1);
const Color doneB=Color.fromRGBO(223,255, 230,1);

