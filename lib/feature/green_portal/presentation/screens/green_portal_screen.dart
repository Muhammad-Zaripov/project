import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/widgets/custom_app_bar.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../wallet/presentation/widgets/convert_fuelz_card.dart';
import '../widgets/complated_project_widget.dart';
import '../widgets/current_projects_widget.dart';
import '../widgets/new_projects_widget.dart';

class GreenPortalScreen extends StatelessWidget {
  const GreenPortalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: l10n.socialPortal),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsPath.socialPortalBacground),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.8),
                          Colors.white,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 16,
                  right: 16,
                  child: NewProjectsWidget(),
                ),
                Positioned(
                  top: 130,
                  left: 16,
                  right: 16,
                  child: Column(
                    spacing: AppSpacing.spacingM,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xB32A414D),
                          borderRadius: BorderRadius.circular(AppRadius.medium),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.paddingM,
                          vertical: AppPaddings.paddingS,
                        ),
                        child: Row(
                          spacing: AppSpacing.spacingS,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '25 Green Fuelz',
                              style: AppTextStyles.heading1SemiBold.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            Image.asset(
                              AssetsPath.piecee3,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(AppRadius.medium),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.paddingM,
                          vertical: AppPaddings.paddingS,
                        ),
                        child: Text(
                          'Get more',
                          style: AppTextStyles.bodyLargeMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppPaddings.padding4XL,
                horizontal: AppPaddings.defaultBottomPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSpacing.spacing3xl),
                  Text(
                    'Current projects',
                    style: AppTextStyles.bodyLargeSemiBold.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppSpacing.spacingM),
                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: AppSpacing.spacingS,
                      children: [
                        CurrentProjectsWidget(),
                        CurrentProjectsWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSpacing.spacing2xl),
                  SizedBox(height: AppSpacing.spacingXs),
                  Text(
                    'Completed projects',
                    style: AppTextStyles.bodyLargeSemiBold.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppSpacing.spacingM),
                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: AppSpacing.spacingS,
                      children: [
                        ComplatedProjectWidget(),
                        ComplatedProjectWidget(),
                      ],
                    ),
                  ),

                  SizedBox(height: AppSpacing.spacing3xl),
                  ConvertFuelzCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
