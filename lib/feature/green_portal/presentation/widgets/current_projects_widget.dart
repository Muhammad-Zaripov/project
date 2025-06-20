import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/widgets/custom_card.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'project_widget.dart';

class CurrentProjectsWidget extends StatelessWidget {
  const CurrentProjectsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return CustomCard(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return ProjectWidget();
          },
        );
      },
      margin: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.medium),
                child: Image.asset(
                  AssetsPath.socialPortalBacground,
                  width: 196,
                  height: 116,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(AppRadius.medium),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPaddings.paddingM,
                    vertical: AppPaddings.paddingXS,
                  ),
                  child: Text('Join'),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.spacingS),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Plant 100K trees',
                style: AppTextStyles.bodyLargeMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.spacingS),

              Text(
                l10n.joinGreenInitiative,
                style: AppTextStyles.bodyMediumRegular.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppSpacing.spacingM),
              const Text(
                'Funds collected',
                style: AppTextStyles.bodySmallRegular,
              ),
              SizedBox(height: AppSpacing.spacingS),
              Container(
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.grey,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreen,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.spacingXs),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('200', style: AppTextStyles.bodySmallRegular),
                  Text('Fuelz liters', style: AppTextStyles.bodySmallRegular),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
