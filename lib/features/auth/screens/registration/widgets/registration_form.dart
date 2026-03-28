import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/constants/text_strings.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';
import 'package:todo_app/core/widgets/text_form_field/custom_text_form_field.dart';
import 'package:todo_app/features/auth/controllers/registration_controller.dart';
import 'package:todo_app/routes/route_names.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final registrationController = context.read<RegistrationController>();

    return Form(
      key: registrationController.registrationFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: CustomSizes.spaceBtwSections,
        ),
        child: Column(
          spacing: CustomSizes.spaceBtwInputFields,
          children: [
            // Username
            CustomTextFormField(
              controller: registrationController.username,
              labelText: TextStrings.usernameLabel,
              placeholderText: TextStrings.usernamePlaceholder,
            ),

            // Password
            CustomTextFormField(
              controller: registrationController.password,
              labelText: TextStrings.passwordLabel,
              placeholderText: TextStrings.passwordPlaceholder,
              obscureText: true,
            ),

            // Confirm Password
            CustomTextFormField(
              controller: registrationController.confirmPassword,
              labelText: TextStrings.confirmPasswordLabel,
              placeholderText: TextStrings.confirmPasswordPlaceholder,
              obscureText: true,
            ),

            // Button
            SizedBox(
              width: DeviceUtility.screenWidth(context),
              child: ElevatedButton(
                onPressed: () {
                  registrationController.register();

                  NavigationUtility.navigateTo(
                    context: context,
                    routeName: RouteNames.homeScreen,
                  );
                },
                child: Text(TextStrings.registerButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
