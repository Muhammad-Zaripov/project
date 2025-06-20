import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/widgets/custom_card.dart';

class ComplatedProjectWidget extends StatelessWidget {
  const ComplatedProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Figma designdagi o'lchamlar (390px ekran uchun)
    final figmaScreenWidth = 390.0;
    final figmaWidgetWidth = 328.0; // 304 + 12 + 12
    final figmaImageWidth = 304.0;
    final figmaImageHeight = 116.0;

    // Widget ekranning necha foizini egallashi (328/390 = 84.1%)
    final widgetWidthPercentage = figmaWidgetWidth / figmaScreenWidth;

    // Hozirgi ekran uchun responsive o'lchamlar
    final responsiveWidgetWidth = screenWidth * widgetWidthPercentage;
    final responsiveImageWidth =
        responsiveWidgetWidth - 24; // 12px + 12px padding
    final responsiveImageHeight =
        (responsiveImageWidth * figmaImageHeight) / figmaImageWidth;

    // Scale factor matn va iconlar uchun
    final scaleFactor = screenWidth / figmaScreenWidth;

    return CustomCard(
      width: responsiveWidgetWidth,
      margin: EdgeInsets.all(0),
      child: Column(
        spacing: AppSpacing.spacingM,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.medium),
            child: Image.asset(
              AssetsPath.complatedImage,
              width: responsiveImageWidth,
              height: responsiveImageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Plant 100K trees',
            style: AppTextStyles.bodyLargeSemiBold.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: AppSpacing.spacingS,
                children: [
                  Image.asset(
                    AssetsPath.piecee3,
                    width: (24 * scaleFactor).clamp(20.0, 28.0),
                    height: (24 * scaleFactor).clamp(20.0, 28.0),
                    fit: BoxFit.cover,
                  ),
                  Text('7500', style: AppTextStyles.bodyLargeRegular),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:
                      AppPaddings.paddingS * scaleFactor.clamp(0.8, 1.2),
                  vertical: AppPaddings.paddingXS * scaleFactor.clamp(0.8, 1.2),
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(AppRadius.medium),
                ),
                child: Text(
                  'See achievement report',
                  style: AppTextStyles.bodyLargeRegular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
