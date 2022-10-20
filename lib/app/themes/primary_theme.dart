import 'package:flutter/material.dart';

final primaryTheme = ThemeData(
  fontFamily: 'GlacialIndifference',
  brightness: Brightness.light,
  iconTheme: const IconThemeData(color: Color(0xff95bfd8)),
  hintColor: Color(0xff95bfd8),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Color(0xffff9a96),
    unselectedItemColor: Color(0xff314560),
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Color(0xff33bab8),
      textStyle: const TextStyle(
        color: Color(0xff314560),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(
        color: Color(0xff95bfd8),
      ), // background
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hoverColor: Color(0xff95bfd8),
    fillColor: Color(0xff95bfd8),
    focusColor: Color(0xff95bfd8),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w800,
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      color: Color(0xff95bfd8),
      fontWeight: FontWeight.w800,
      fontSize: 16,
    ),
    button: TextStyle(
      color: Color(0xff5a6e89),
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    subtitle1: TextStyle(
      color: Color(0xff5a6e89),
      fontWeight: FontWeight.w800,
      fontSize: 14,
    ),
    subtitle2: TextStyle(
      color: Colors.white.withOpacity(.6),
      fontWeight: FontWeight.w800,
      fontSize: 12,
    ),
    overline: TextStyle(
      color: Color(0xff95bfd8),
      fontWeight: FontWeight.w800,
      fontSize: 14,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 28,
    ),
    headline4: TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w800,
      fontSize: 44,
    ),
    headline6: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(
      fontFamily: 'Siffon',
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Siffon',
      fontSize: 13,
      fontWeight: FontWeight.w500,
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
);
