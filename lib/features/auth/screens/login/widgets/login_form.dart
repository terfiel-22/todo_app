import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';
import 'package:todo_app/core/widgets/text_form_field/custom_text_form_field.dart';
import 'package:todo_app/features/auth/controllers/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = context.read<LoginController>();

    return Form(
      key: loginController.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: CustomSizes.spaceBtwSections,
        ),
        child: Column(
          spacing: CustomSizes.spaceBtwInputFields,
          children: [
            // Username
            CustomTextFormField(
              controller: loginController.username,
              labelText: TextStrings.usernameLabel,
              placeholderText: TextStrings.usernamePlaceholder,
            ),

            // Password
            CustomTextFormField(
              controller: loginController.password,
              labelText: TextStrings.passwordLabel,
              placeholderText: TextStrings.passwordPlaceholder,
              obscureText: true,
            ),

            // Button
            SizedBox(
              width: DeviceUtility.screenWidth(context),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TextStrings.loginButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
