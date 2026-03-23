import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/widgets/appbar/custom_appbar.dart';
import 'package:todo_app/core/widgets/page_container/page_container.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
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
            const SizedBox(height: CustomSizes.spaceBtwSectionsLg),
            const LoginForm(),

            // Divider

            // Social Buttons

            // Navigate to Registration
          ],
        ),
      ),
    );
  }
}
