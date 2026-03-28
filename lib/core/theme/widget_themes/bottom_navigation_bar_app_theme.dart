import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';

class BottomNavigationBarAppTheme {
  BottomNavigationBarAppTheme._();

  static final lightTheme = const BottomNavigationBarThemeData(
    backgroundColor: CustomColors.light,
    selectedItemColor: CustomColors.darkerGrey,
    unselectedItemColor: CustomColors.darkerGrey,
    showUnselectedLabels: true,
  );

  static final darkTheme = const BottomNavigationBarThemeData(
    backgroundColor: CustomColors.darkerGrey,
    selectedItemColor: CustomColors.light,
    unselectedItemColor: CustomColors.light,
    showUnselectedLabels: true,
  );
}
