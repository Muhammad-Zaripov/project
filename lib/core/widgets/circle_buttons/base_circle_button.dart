import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class BaseCircleButton extends StatelessWidget {
  const BaseCircleButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.backgroundColor = AppColors.grey,
    this.iconColor,
    this.overlayColor,
    this.iconSize,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final Color backgroundColor;
  final Color? iconColor;
  final Color? overlayColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: const Size(44, 44),
        overlayColor: overlayColor,
      ),
      onPressed: onPressed,
      icon: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
