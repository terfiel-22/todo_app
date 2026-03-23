import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app.dart';
import 'package:todo_app/core/theme/theme_provider.dart';
import 'package:todo_app/features/auth/controllers/login_controller.dart';
import 'package:todo_app/features/auth/controllers/registration_controller.dart';
import 'package:todo_app/features/onboarding/controllers/onboarding_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => OnboardingController()),
        ChangeNotifierProvider(create: (_) => LoginController()),
        ChangeNotifierProvider(create: (_) => RegistrationController()),
      ],
      child: const TodoApp(),
    ),
  );
}
