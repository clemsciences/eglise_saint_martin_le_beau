import "dart:ui" show Color;

import "package:flutter/material.dart";

class SatStyle {
  static const redColor = Color.fromARGB(255, 192, 13, 13);
  static const softRedColor = Color.fromARGB(255, 243, 140, 140);
  static const darkBlueColor = Color.fromARGB(255, 58, 94, 109);
  static const softDarkBlueColor = Color.fromARGB(255, 130, 214, 250);
  static const lightBlueColor = Color.fromARGB(255, 1, 146, 186);
  static const softLightBlueColor = Color.fromARGB(255, 0, 198, 255);

  static const textLinkStyle = TextStyle(
    color: Colors.blueAccent,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: Colors.blueAccent,
    decorationThickness: 2.0,
    height: 1.5,
  );
}
