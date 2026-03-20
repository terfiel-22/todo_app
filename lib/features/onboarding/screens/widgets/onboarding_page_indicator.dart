import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = context.read<OnboardingController>();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: CustomSizes.spaceBtwSectionsLg,
      ),
      child: SmoothPageIndicator(
        controller: onboardingController.pageController,
        count: 3,
        effect: SlideEffect(
          spacing: CustomSizes.sm,
          radius: CustomSizes.borderRadiusSm,
          dotWidth: CustomSizes.lg,
          dotHeight: CustomSizes.xs,
          paintStyle: PaintingStyle.fill,
          dotColor: CustomColors.darkGrey,
          activeDotColor: CustomColors.white,
        ),
      ),
    );
  }
}
