import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';

class TextButtonAppTheme {
  TextButtonAppTheme._();

  static final lightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: CustomColors.darkGrey,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
    ),
  );

  static final darkTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: CustomColors.darkGrey,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
    ),
  );
}
