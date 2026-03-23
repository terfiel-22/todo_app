import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  const PageContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtility.screenWidth(context),
      height: DeviceUtility.screenHeight(context),
      padding: const EdgeInsets.all(CustomSizes.defaultSpace),
      child: child,
    );
  }
}
