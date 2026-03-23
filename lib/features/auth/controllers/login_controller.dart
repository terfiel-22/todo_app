import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  Future<void> login() async {}
}
