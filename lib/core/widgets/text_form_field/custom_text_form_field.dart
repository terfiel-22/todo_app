import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String placeholderText;
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.placeholderText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: CustomSizes.spaceBtwItems,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: placeholderText),
        ),
      ],
    );
  }
}
