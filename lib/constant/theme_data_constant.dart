import 'package:flutter/material.dart';

class ThemeDataConstant {
  static ThemeDataConstant _instance;
  static ThemeDataConstant get instance {
    if (_instance != null) return _instance;
    _instance = ThemeDataConstant._init();
    return _instance;
  }

  ThemeDataConstant._init();

  ThemeData get themeDataConstant => ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Fredoka',
            fontSize: 55,
            color: Colors.white,
          ),
        ),
      );

  ThemeData get buttonDataConstant => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(255, 70, 10, 1),
          ),
        ),
      );

  ThemeData get tabThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      );

  ThemeData get loginButtonThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );

  ThemeData get textThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  ThemeData get textContainerThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 70, 10, 1),
          ),
        ),
      );

  ThemeData get detayTextThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  ThemeData get teslimatTextThemeData => ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      );
}
