import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/layout/guest_page_layout.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';
import 'package:todo_app/routes/route_names.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GuestPageLayout(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  vertical: CustomSizes.appBarHeight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: CustomSizes.spaceBtwSections,
                  children: [
                    Text(
                      TextStrings.startScreenTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      TextStrings.startScreenSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              spacing: CustomSizes.spaceBtwItems,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => NavigationUtility.navigateTo(
                      context: context,
                      routeName: RouteNames.loginScreen,
                    ),
                    child: Text(TextStrings.loginButton),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => NavigationUtility.navigateTo(
                      context: context,
                      routeName: RouteNames.registrationScreen,
                    ),
                    child: Text(TextStrings.createAccountButton),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
