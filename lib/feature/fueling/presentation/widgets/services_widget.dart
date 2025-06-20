import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';

import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/constants/widget_configs.dart';
import 'fulling_station.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = [
      AssetsPath.fuelwhite,
      AssetsPath.forkwhite,
      AssetsPath.carwhite,
    ];
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => FullingStation(),
              );
            },
            child: Container(
              padding: EdgeInsets.all(AppPaddings.paddingM),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.medium),
                boxShadow: WidgetConfigs.boxShadow,
                color: AppColors.white,
              ),
              child: Column(
                spacing: AppSpacing.spacingM,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '⚙️️ Services',
                    style: AppTextStyles.bodyMediumSemiBold.copyWith(
                      fontFamily: 'Gilroy-Regular',
                    ),
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          final String selectedImage =
                              imageAssets[index % imageAssets.length];
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(
                                AppRadius.circle,
                              ),
                            ),
                            child: SvgPicture.asset(
                              selectedImage,
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                      ),
                      Row(
                        spacing: 2,
                        children: [
                          Icon(Icons.circle, size: 5, color: AppColors.grey),
                          Icon(Icons.circle, size: 5),
                          Icon(Icons.circle, size: 5, color: AppColors.grey),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Expanded(
          child: Container(
            padding: EdgeInsets.all(AppPaddings.paddingM),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.medium),
              boxShadow: WidgetConfigs.boxShadow,
              color: AppColors.white,
            ),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feul Type',
                      style: AppTextStyles.bodyLargeSemiBold.copyWith(
                        fontFamily: 'Gilroy-Regular',
                      ),
                    ),
                    SvgPicture.asset(
                      AssetsPath.settingGreen,
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Text(
                  'Auto Diesel',
                  style: AppTextStyles.bodyMediumRegular.copyWith(
                    fontFamily: 'Gilroy-Regular',
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
