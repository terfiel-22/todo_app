import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/layout/guest_page_layout.dart';
import 'package:todo_app/core/widgets/appbar/custom_appbar.dart';
import 'package:todo_app/core/widgets/auth/bottom_text_navigation.dart';
import 'package:todo_app/core/widgets/buttons/google_button.dart';
import 'package:todo_app/core/widgets/divider/auth_divider.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_form.dart';
import 'package:todo_app/routes/route_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(backPageName: RouteNames.startScreen),
      body: GuestPageLayout(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                TextStrings.loginHeader,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              // Login Form
              const LoginForm(),

              // Divider
              AuthDivider(dividerText: TextStrings.authDividerText),

              // Social Buttons
              GoogleButton(
                buttonText: TextStrings.loginGoogleButton,
                onPressed: () {},
              ),

              // Navigate to Registration
              BottomTextNavigation(
                question: TextStrings.dontHaveAnAccount,
                linkText: TextStrings.registerButton,
                routeName: RouteNames.registrationScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
