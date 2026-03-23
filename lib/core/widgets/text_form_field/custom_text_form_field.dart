import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String placeholderText;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.placeholderText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: CustomSizes.spaceBtwInputFieldsAndLabel,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(hintText: placeholderText),
        ),
      ],
    );
  }
}
