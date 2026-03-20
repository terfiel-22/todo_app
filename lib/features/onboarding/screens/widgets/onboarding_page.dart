import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image
        Image(
          height: DeviceUtility.screenHeight(context) * 0.4,
          width: DeviceUtility.screenWidth(context) * 0.8,
          image: AssetImage(image),
        ),

        // Title & Subtitle
        const SizedBox(height: CustomSizes.spaceBtwSectionsLg),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: CustomSizes.spaceBtwSections),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
