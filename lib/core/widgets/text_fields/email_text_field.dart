import 'package:flutter/material.dart';

import 'app_text_field.dart';

class EmailTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool isRequired;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const EmailTextField({
    super.key,
    this.label = 'Email',
    this.hintText,
    this.isRequired = false,
    this.controller,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hintText: hintText,
      isRequired: isRequired,
      type: AppTextFieldType.email,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
    );
  }
}
