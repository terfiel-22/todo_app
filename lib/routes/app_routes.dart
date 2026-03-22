import 'package:flutter/material.dart';
import 'package:todo_app/features/auth/screens/start_screen.dart';
import 'package:todo_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:todo_app/routes/route_names.dart';

class AppRoutes {
  static final routes = {
    RouteNames.index: (BuildContext context) => OnboardingScreen(),
    RouteNames.startScreen: (BuildContext context) => StartScreen(),
  };
}
