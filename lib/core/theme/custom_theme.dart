import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/theme/widget_themes/elevated_button_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/icon_button_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/outlined_button_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/text_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/text_button_app_theme.dart';
import 'package:todo_app/core/theme/widget_themes/text_form_field_app_theme.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lato',
    brightness: Brightness.light,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.white,
    appBarTheme: AppBarThemeData(backgroundColor: CustomColors.white),
    textTheme: TextAppTheme.lightTheme,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightTheme,
    iconButtonTheme: IconButtonAppTheme.lightTheme,
    outlinedButtonTheme: OutlinedButtonAppTheme.lightTheme,
    textButtonTheme: TextButtonAppTheme.lightTheme,
    inputDecorationTheme: TextFormFieldAppTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lato',
    brightness: Brightness.dark,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.black,
    appBarTheme: AppBarThemeData(backgroundColor: CustomColors.black),
    textTheme: TextAppTheme.darkTheme,
    elevatedButtonTheme: ElevatedButtonAppTheme.darkTheme,
    outlinedButtonTheme: OutlinedButtonAppTheme.darkTheme,
    iconButtonTheme: IconButtonAppTheme.darkTheme,
    textButtonTheme: TextButtonAppTheme.darkTheme,
    inputDecorationTheme: TextFormFieldAppTheme.darkTheme,
  );
}
