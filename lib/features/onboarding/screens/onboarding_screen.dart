import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/image_strings.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/layout/guest_page_layout.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_navigation.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_page_indicator.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_page_view.dart';
import 'package:todo_app/features/onboarding/screens/widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GuestPageLayout(
        child: Stack(
          children: [
            // Onboarding Pages
            OnboardingPageView(
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

            // Onboarding Page Indicator
            const OnboardingPageIndicator(),

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
