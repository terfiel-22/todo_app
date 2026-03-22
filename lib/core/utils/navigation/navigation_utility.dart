import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationUtility {
  NavigationUtility._();

  static void navigationPush({
    required BuildContext context,
    required String routeName,
  }) {
    context.push(routeName);
  }

  static void navigationPop({
    required BuildContext context,
    required String routeName,
  }) {
    context.pop(routeName);
  }

  static void navigateTo({
    required BuildContext context,
    required String routeName,
  }) {
    context.go(routeName);
  }
}
