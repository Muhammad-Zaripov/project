import 'package:flutter/material.dart';

import 'app_text_field.dart';

class NameTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool isRequired;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const NameTextField({
    super.key,
    this.label = 'First Name',
    this.hintText,
    this.isRequired = true,
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
      type: AppTextFieldType.text,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
    );
  }
}
