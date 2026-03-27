import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    brightness: Brightness.light,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.white,
    appBarTheme: const AppBarThemeData(backgroundColor: CustomColors.white),
    textTheme: GoogleFonts.latoTextTheme(TextAppTheme.lightTheme),
    elevatedButtonTheme: ElevatedButtonAppTheme.lightTheme,
    iconButtonTheme: IconButtonAppTheme.lightTheme,
    outlinedButtonTheme: OutlinedButtonAppTheme.lightTheme,
    textButtonTheme: TextButtonAppTheme.lightTheme,
    inputDecorationTheme: TextFormFieldAppTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.black,
    appBarTheme: const AppBarThemeData(backgroundColor: CustomColors.black),
    textTheme: GoogleFonts.latoTextTheme(TextAppTheme.darkTheme),
    elevatedButtonTheme: ElevatedButtonAppTheme.darkTheme,
    outlinedButtonTheme: OutlinedButtonAppTheme.darkTheme,
    iconButtonTheme: IconButtonAppTheme.darkTheme,
    textButtonTheme: TextButtonAppTheme.darkTheme,
    inputDecorationTheme: TextFormFieldAppTheme.darkTheme,
  );
}
