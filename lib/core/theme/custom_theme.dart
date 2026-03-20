import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/widget_themes/elevated_button_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/text_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/text_button_app_theme.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lato',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextAppTheme.lightTheme,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightTheme,
    textButtonTheme: TextButtonAppTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lato',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextAppTheme.darkTheme,
    elevatedButtonTheme: ElevatedButtonAppTheme.darkTheme,
    textButtonTheme: TextButtonAppTheme.darkTheme,
  );
}
