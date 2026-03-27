import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';

class BottomTextNavigation extends StatelessWidget {
  final String question;
  final String linkText;
  final String routeName;
  const BottomTextNavigation({
    super.key,
    required this.question,
    required this.linkText,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: question,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const TextSpan(text: " "),
            TextSpan(
              text: linkText,
              style: Theme.of(context).textTheme.labelLarge,
              recognizer: TapGestureRecognizer()
                ..onTap = () => NavigationUtility.navigateTo(
                  context: context,
                  routeName: routeName,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
