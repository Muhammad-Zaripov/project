import 'package:flutter/material.dart';

import 'internal/app_button.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final String? subtitle;
  final VoidCallback? onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;
  final bool isWithArrowForward;
  final AppButtonSize size;

  const PrimaryButton({
    super.key,
    required this.text,
    this.subtitle,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isWithArrowForward = false,
    this.isLoading = false,
    this.size = AppButtonSize.medium,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text,
      subtitle: subtitle,
      onPressed: onPressed,
      type: AppButtonType.primary,
      size: size,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      isLoading: isLoading,
      isWithArrowForward: isWithArrowForward && trailingIcon != null,
    );
  }
}
