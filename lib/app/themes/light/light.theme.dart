import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF2E328D);
const lightColor = const Color(0xFFFFC600);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: TextTheme(
      body1: TextStyle(
        color: primaryColor,
        fontSize: 24,
      ),
      body2: TextStyle(
        color: primaryColor,
        fontSize: 18,
      ),
      display1: TextStyle(fontSize: 78),
      button: TextStyle(color: Colors.green),
    ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme: AppBarTheme(color: primaryColor),),
    // bottomAppBarTheme:
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange,
      textTheme: ButtonTextTheme.primary,
      minWidth: 200,
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: Colors.indigo,
    ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    accentColor: lightColor,
    //fontFamily: 'Montserrat',
    buttonColor: Color(0xFF00C569),
    scaffoldBackgroundColor: backgroundColor,
    cardColor: Colors.white,
  );
}
