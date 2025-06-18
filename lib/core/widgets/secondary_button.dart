import 'package:flutter/material.dart';

import 'internal/app_button.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final String? subtitle;
  final VoidCallback? onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;
  final AppButtonSize size;

  const SecondaryButton({
    Key? key,
    required this.text,
    this.subtitle,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.size = AppButtonSize.medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text,
      subtitle: subtitle,
      onPressed: onPressed,
      type: AppButtonType.secondary,
      size: size,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      isLoading: isLoading,
    );
  }
}