import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/widgets/custom_card.dart';

class TestBankWidget extends StatelessWidget {
  const TestBankWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return CustomCard(
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: AppSpacing.spacingL,
            children: [
              SvgPicture.asset(AssetsPath.museum),
              Text(
                'Test Bank',
                style: AppTextStyles.heading2SemiBold.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              borderRadius: BorderRadius.circular(AppRadius.large),
            ),
            child: Row(
              spacing: 10,
              children: [
                SvgPicture.asset(AssetsPath.setting),
                Text(
                  l10n.change,
                  style: AppTextStyles.bodyLargeSemiBold.copyWith(
                    fontWeight: FontWeight.w600,
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
