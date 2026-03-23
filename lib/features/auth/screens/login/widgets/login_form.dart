import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
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
          vertical: CustomSizes.spaceBtwSectionsLg,
        ),
        child: Column(
          children: [
            // Username
            CustomTextFormField(
              controller: loginController.username,
              labelText: "Username",
              placeholderText: "Enter your username",
            ),

            // Password
            const SizedBox(height: CustomSizes.spaceBtwSections),
            CustomTextFormField(
              controller: loginController.password,
              labelText: "Password",
              placeholderText: "Enter your password",
            ),

            // Button
            const SizedBox(height: CustomSizes.spaceBtwSectionsLg),
            SizedBox(
              width: DeviceUtility.screenWidth(context),
              child: ElevatedButton(onPressed: () {}, child: Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}
