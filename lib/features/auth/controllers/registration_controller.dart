import 'package:flutter/material.dart';

class RegistrationController with ChangeNotifier {
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  Future<void> register() async {}
}
