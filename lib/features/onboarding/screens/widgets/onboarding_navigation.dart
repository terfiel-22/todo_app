import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = context.read<OnboardingController>();

    return Align(
      alignment: AlignmentGeometry.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onboardingController.backPage,
            child: const Text("BACK"),
          ),
          ElevatedButton(
            onPressed: () => onboardingController.nextPage(context),
            child: Text(
              context.watch<OnboardingController>().currentPageIndex == 2
                  ? "GET STARTED"
                  : "NEXT",
            ),
          ),
        ],
      ),
    );
  }
}
