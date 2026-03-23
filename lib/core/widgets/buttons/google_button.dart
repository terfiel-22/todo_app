import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/image_strings.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';

class GoogleButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const GoogleButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
      width: DeviceUtility.screenHeight(context),
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Image(
          width: CustomSizes.iconMd,
          height: CustomSizes.iconMd,
          image: AssetImage(ImageStrings.google),
        ),
        label: Text(buttonText),
      ),
    );
  }
}
