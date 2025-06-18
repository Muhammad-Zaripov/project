import 'package:flutter/material.dart';
import 'package:wallet/core/utils/extensions/color_extensions.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

enum AppButtonType { primary, secondary, danger, ghost }

enum AppButtonSize { small, medium, large }

/// To'g'ridan to'g'ri AppButtondan foydalanilmasin
/// AppButton umumiy widget sifatida yaratilgan
/// Sahifalarda foydalanish uchun AppButton'dan foydalangan holatda
/// PrimaryButton, SecondaryButton yaratilgan
class AppButton extends StatelessWidget {
  final String text;
  final String? subtitle;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final AppButtonSize size;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;
  final bool isFullWidth;
  final bool isWithArrowForward;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  const AppButton({
    super.key,
    required this.text,
    this.subtitle,
    this.onPressed,
    this.type = AppButtonType.primary,
    this.size = AppButtonSize.medium,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.isWithArrowForward = false,
    this.isFullWidth = true,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: _getButtonHeight(),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _getButtonStyle(context),
        child: _buildButtonContent(),
      ),
    );
  }

  Widget _buildButtonContent() {
    if (isLoading) {
      return SizedBox(
        height: _getIconSize(),
        width: _getIconSize(),
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(_getTextColor()),
        ),
      );
    }

    if (isWithArrowForward) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (trailingIcon != null) Opacity(opacity: 0, child: trailingIcon!),
          _buildTextContent(),
          if (trailingIcon != null) trailingIcon!,
        ],
      );
    }

    List<Widget> children = [];

    if (leadingIcon != null) {
      children.add(
        SizedBox(
          height: _getIconSize(),
          width: _getIconSize(),
          child: leadingIcon!,
        ),
      );
      children.add(SizedBox(width: _getIconSpacing()));
    }

    children.add(_buildTextContent());

    if (trailingIcon != null) {
      children.add(SizedBox(width: _getIconSpacing()));
      children.add(
        SizedBox(
          height: _getIconSize(),
          width: _getIconSize(),
          child: trailingIcon!,
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  Widget _buildTextContent() {
    if (subtitle != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: _getTextStyle(), textAlign: TextAlign.center),
          const SizedBox(height: 2),
          Text(
            subtitle!,
            style: _getSubtitleStyle(),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    return Text(text, style: _getTextStyle(), textAlign: TextAlign.center);
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      disabledBackgroundColor: AppColors.disabledBackground,
      backgroundColor: _getBackgroundColor(),
      foregroundColor: _getTextColor(),
      elevation: _getElevation(),
      shadowColor: _getShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? _getBorderRadius(),
        side: _getBorderSide(),
      ),
      padding: padding ?? _getPadding(),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  // Dimensions
  double _getButtonHeight() {
    switch (size) {
      case AppButtonSize.small:
        return 52;
      // return subtitle != null ? 60 : 44;
      case AppButtonSize.medium:
        return 60;
      // return subtitle != null ? 72 : 56;
      case AppButtonSize.large:
        return subtitle != null ? 72 : 60;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppButtonSize.small:
        return 16;
      case AppButtonSize.medium:
        return 20;
      case AppButtonSize.large:
        return 24;
    }
  }

  double _getIconSpacing() {
    switch (size) {
      case AppButtonSize.small:
        return 8;
      case AppButtonSize.medium:
        return 12;
      case AppButtonSize.large:
        return 16;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case AppButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 6, vertical: 6);
      case AppButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 8);
      case AppButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 12);
    }
  }

  BorderRadius _getBorderRadius() {
    switch (size) {
      case AppButtonSize.small:
        return BorderRadius.circular(22);
      case AppButtonSize.medium:
        return BorderRadius.circular(28);
      case AppButtonSize.large:
        return BorderRadius.circular(32);
    }
  }

  // Colors and Styles
  Color _getBackgroundColor() {
    if (onPressed == null && !isLoading) {
      return AppColors.disabledBackground;
    }

    switch (type) {
      case AppButtonType.primary:
        return AppColors.primaryGreen;
      case AppButtonType.secondary:
        return AppColors.textLight;
      case AppButtonType.danger:
        return AppColors.black;
      case AppButtonType.ghost:
        return Colors.transparent;
    }
  }

  Color _getTextColor() {
    if (onPressed == null && !isLoading) {
      return AppColors.disabledText;
    }

    switch (type) {
      case AppButtonType.primary:
        return AppColors.black;
      case AppButtonType.secondary:
        return AppColors.black;
      case AppButtonType.danger:
        return AppColors.white;
      case AppButtonType.ghost:
        return AppColors.primaryGreen;
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case AppButtonSize.small:
        return AppTextStyles.bodyMediumSemiBold.copyWith(
          color: _getTextColor(),
        );
      case AppButtonSize.medium:
        return AppTextStyles.bodyLargeSemiBold.copyWith(color: _getTextColor());
      case AppButtonSize.large:
        return AppTextStyles.heading1SemiBold.copyWith(color: _getTextColor());
    }
  }

  TextStyle _getSubtitleStyle() {
    return AppTextStyles.bodyMediumRegular.copyWith(
      color: _getTextColor().withAlpha(0.8.toAlpha),
      fontWeight: FontWeight.w400,
    );
  }

  BorderSide _getBorderSide() {
    switch (type) {
      case AppButtonType.ghost:
        return BorderSide(color: _getTextColor(), width: 1);
      default:
        return BorderSide.none;
    }
  }

  double _getElevation() {
    switch (type) {
      case AppButtonType.primary:
        return 2;
      case AppButtonType.secondary:
        return 1;
      case AppButtonType.danger:
        return 2;
      case AppButtonType.ghost:
        return 0;
    }
  }

  Color _getShadowColor() {
    return AppColors.black.withAlpha(0.1.toAlpha);
  }
}
