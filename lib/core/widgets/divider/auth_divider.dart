import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final isLightMode = DeviceUtility.isLightMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isLightMode ? CustomColors.grey : CustomColors.darkGrey,
            thickness: 0.5,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.bodySmall),
        Flexible(
          child: Divider(
            color: isLightMode ? CustomColors.grey : CustomColors.darkGrey,
            thickness: 0.5,
            indent: 5,
          ),
        ),
      ],
    );
  }
}
