import 'package:flutter/material.dart';
import 'package:todo_app/core/widgets/page_container/page_container.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PageContainer(child: Text("Registration")));
  }
}
