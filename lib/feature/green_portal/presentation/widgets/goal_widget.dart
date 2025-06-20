import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/widgets/custom_card.dart';

class GoalWidget extends StatelessWidget {
  const GoalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.all(0),
      child: Column(
        spacing: AppSpacing.spacingM,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: AppSpacing.spacingS,
                children: [
                  SvgPicture.asset(AssetsPath.cup),
                  Text(
                    'Goal',
                    style: AppTextStyles.heading2SemiBold.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: AppSpacing.spacingS,
                children: [
                  Text('7500', style: AppTextStyles.bodyLargeRegular),
                  Image.asset(
                    AssetsPath.piecee3,
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '120 Rs',
                    style: AppTextStyles.bodyLargeRegular.copyWith(
                      color: AppColors.primaryBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            'Our project aims to restore fragile ecosystems, combat climate change and support local communities by creating sustainable jobs. Each tree planted...',

            style: AppTextStyles.bodyMediumRegular,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Read more',
                style: AppTextStyles.bodySmallRegular.copyWith(
                  color: AppColors.primaryBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
