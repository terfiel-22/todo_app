import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';

class OnboardingPageView extends StatelessWidget {
  final List<Widget> children;
  const OnboardingPageView({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    final onboardingController = context.read<OnboardingController>();

    return PageView(
      allowImplicitScrolling: true,
      controller: onboardingController.pageController,
      onPageChanged: onboardingController.updatePageIndicator,
      children: children,
    );
  }
}
