import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class OutlinedButtonAppTheme {
  OutlinedButtonAppTheme._();

  static final lightTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: CustomColors.onPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: CustomColors.primary),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      padding: const EdgeInsets.all(CustomSizes.lg),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusSm),
      ),
    ),
  );

  static final darkTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: CustomColors.onPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: CustomColors.primary),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      padding: const EdgeInsets.all(CustomSizes.lg),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusSm),
      ),
    ),
  );
}
