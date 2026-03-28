import 'package:flutter/material.dart';
import 'package:todo_app/core/layout/authenticated_page_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthenticatedPageLayout(body: Center(child: Text("Home")));
  }
}
