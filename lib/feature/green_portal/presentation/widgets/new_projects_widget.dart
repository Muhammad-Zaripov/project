import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/widget_configs.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';

class NewProjectsWidget extends StatelessWidget {
  const NewProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: WidgetConfigs.boxShadow,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: -1,
            bottom: -35,
            child: SvgPicture.asset(
              AssetsPath.portalMap,
              width: 86,
              height: 115,
            ),
          ),
          Positioned(
            right: 10,
            bottom: -5,
            child: SvgPicture.asset(
              AssetsPath.greenLine,
              width: 295,
              height: 56,
            ),
          ),
          Positioned(
            right: 150,
            bottom: 14,
            child: Icon(Icons.circle, size: 10, color: AppColors.primaryGreen),
          ),
          Positioned(
            right: -30,
            bottom: -8,
            child: Transform.rotate(
              angle: 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.medium),
                child: Image.asset(
                  AssetsPath.mountImage,
                  width: 105,
                  height: 80,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppPaddings.paddingM),
            child: Column(
              spacing: AppSpacing.spacingS,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('3 new projects', style: AppTextStyles.bodyLargeSemiBold),
                SizedBox(
                  width: 270,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Supported with the help ot the community',
                    style: AppTextStyles.bodyMediumRegular.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
