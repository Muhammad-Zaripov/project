import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_radius.dart';
import '../constants/widget_configs.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.onTap,
    required this.child,
    this.backgroundColor,
    this.borderRadius,
    this.width,
    this.height,
    this.padding,
    this.margin,
  });

  final VoidCallback? onTap;
  final Widget child;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: AppPaddings.paddingL),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppRadius.defaultRadius,
        ),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.white,
            boxShadow: WidgetConfigs.boxShadow,
            borderRadius: BorderRadius.circular(
              borderRadius ?? AppRadius.defaultRadius,
            ),
          ),
          child: Container(
            width: width ?? MediaQuery.sizeOf(context).width,
            height: height,
            padding: padding ?? EdgeInsets.all(AppPaddings.paddingM),
            child: child,
          ),
        ),
      ),
    );
  }
}
