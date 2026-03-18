import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/constants/image_strings.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/widgets/page_container/page_container.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_navigation.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = context.read<OnboardingController>();

    return Scaffold(
      body: PageContainer(
        child: Stack(
          children: [
            // Onboarding Pages
            PageView(
              allowImplicitScrolling: true,
              controller: onboardingController.pageController,
              onPageChanged: onboardingController.updatePageIndicator,
              children: [
                OnboardingPage(
                  image: ImageStrings.onboardingImage1,
                  title: TextStrings.onboardingTitle1,
                  subTitle: TextStrings.onboardingSubTitle1,
                ),
                OnboardingPage(
                  image: ImageStrings.onboardingImage2,
                  title: TextStrings.onboardingTitle2,
                  subTitle: TextStrings.onboardingSubTitle2,
                ),
                OnboardingPage(
                  image: ImageStrings.onboardingImage3,
                  title: TextStrings.onboardingTitle3,
                  subTitle: TextStrings.onboardingSubTitle3,
                ),
              ],
            ),

            // Skip Button
            const OnboardingSkip(),

            // Navigation Buttons
            const OnboardingNavigation(),
          ],
        ),
      ),
    );
  }
}
