import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class IconButtonAppTheme {
  IconButtonAppTheme._();

  static final lightTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      padding: EdgeInsets.zero,
      iconSize: CustomSizes.iconMd,
    ),
  );

  static final darkTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      padding: EdgeInsets.zero,
      iconSize: CustomSizes.iconMd,
    ),
  );
}
