import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'circle_buttons/back_button.dart';

class CustomAppBar extends AppBar {
  /// Asosiy konstruktor
  CustomAppBar({
    super.key,
    String title = '',
    super.actions,
    super.bottom,
    bool centerTitle = true,
    Color? backgroundColor,
    super.titleSpacing,
    super.toolbarTextStyle,
    TextStyle? titleTextStyle,
    double paddingLeft = AppSpacing.spacingL,
    super.elevation,
    super.actionsPadding,
    Widget? leading,
  }) : super(
         title: Text(title, style: titleTextStyle),
         centerTitle: centerTitle,
         foregroundColor: AppColors.transparent,
         toolbarOpacity: 1,
         surfaceTintColor: AppColors.transparent,
         leadingWidth: kToolbarHeight + paddingLeft,
         backgroundColor: backgroundColor ?? AppColors.white,
         titleTextStyle: titleTextStyle,
         leading:
             leading ??
             Row(
               children: [
                 SizedBox(width: paddingLeft),
                 BackButtons(),
               ],
             ),
       );
}
