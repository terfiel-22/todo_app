import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class ElevatedButtonAppTheme {
  ElevatedButtonAppTheme._();

  static final lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.primary,
      foregroundColor: CustomColors.onPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: CustomColors.primary),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusSm),
      ),
    ),
  );

  static final darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.primary,
      foregroundColor: CustomColors.onPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: CustomColors.primary),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusSm),
      ),
    ),
  );
}
