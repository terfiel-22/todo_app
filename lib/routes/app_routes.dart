import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/features/auth/screens/start_screen.dart';
import 'package:todo_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:todo_app/routes/route_names.dart';

class AppRoutes {
  static final GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RouteNames.index,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: RouteNames.startScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const StartScreen();
        },
      ),
    ],
  );
}
