import 'package:flutter/material.dart';

class NavigationUtility {
  NavigationUtility._();

  static void navigationPop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void navigationPush({
    required BuildContext context,
    required Widget widget,
  }) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }

  static void navigationPushNamed({
    required BuildContext context,
    required String routeName,
  }) {
    Navigator.pushNamed(context, routeName);
  }
}
