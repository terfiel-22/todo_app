import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';
import 'package:todo_app/core/widgets/appbar/custom_appbar.dart';
import 'package:todo_app/core/widgets/divider/auth_divider.dart';
import 'package:todo_app/core/widgets/page_container/page_container.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_form.dart';
import 'package:todo_app/routes/route_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(backPageName: RouteNames.startScreen),
      body: PageContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              TextStrings.login,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Login Form
            const LoginForm(),

            // Divider
            const AuthDivider(dividerText: "or"),

            // Social Buttons

            // Navigate to Registration
            const SizedBox(height: CustomSizes.spaceBtwSectionsLg),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: " Register",
                      style: Theme.of(context).textTheme.labelLarge,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => NavigationUtility.navigateTo(
                          context: context,
                          routeName: RouteNames.registrationScreen,
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
