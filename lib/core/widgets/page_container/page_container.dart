import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  const PageContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.defaultSpace),
      child: child,
    );
  }
}
