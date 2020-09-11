import 'package:flutter/material.dart';

import 'color.dart';

class MyTheme {
  static const double smallSize = 16.0;
  static const double mediuSize = 22.0;
  static const double largeSize = 24.0;
  static const double bodySize = 14.0;

  static final Color norTextColor = createMaterialColor(Color(0xFF073b4c));
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: createMaterialColor(Color(0xFF7F9BCA)),
    canvasColor: Color.fromRGBO(255, 255, 255, 1),//背景色233, 196, 106
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodySize,color: norTextColor),
      display1: TextStyle(fontSize: smallSize,color: norTextColor),
      display2: TextStyle(fontSize: mediuSize,color: norTextColor),
      display3: TextStyle(fontSize: largeSize,color: norTextColor),
    )
  );
  static final Color darkTextColor = Colors.blue;
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    canvasColor: Color.fromRGBO(87, 117, 144, 1),
    textTheme: TextTheme(
      body1: TextStyle(fontSize: smallSize,color: darkTextColor),
      display1: TextStyle(fontSize: smallSize,color: norTextColor),
      display2: TextStyle(fontSize: mediuSize,color: norTextColor),
      display3: TextStyle(fontSize: largeSize,color: norTextColor),
    )
  );
}
