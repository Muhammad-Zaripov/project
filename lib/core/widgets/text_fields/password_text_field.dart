import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'app_text_field.dart';

class PasswordTextField extends StatefulWidget {
  final String label;
  final String? hintText;
  final bool isRequired;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const PasswordTextField({
    super.key,
    this.label = 'Password',
    this.hintText,
    this.isRequired = true,
    this.controller,
    this.validator,
    this.onChanged,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: widget.label,
      hintText: widget.hintText,
      isRequired: widget.isRequired,
      type: AppTextFieldType.password,
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      obscureText: _obscureText,
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: AppColors.grey600,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
      textInputAction: TextInputAction.done,
    );
  }
}
