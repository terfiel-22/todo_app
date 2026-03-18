import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = context.read<OnboardingController>();

    return TextButton(
      onPressed: onboardingController.skipPage,
      child: Text("SKIP"),
    );
  }
}
