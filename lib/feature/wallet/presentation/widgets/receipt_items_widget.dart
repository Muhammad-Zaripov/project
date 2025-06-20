import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/constants/widget_configs.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/navigation/app_router.dart';

class ReceiptItemsWidget extends StatefulWidget {
  const ReceiptItemsWidget({super.key});

  @override
  State<ReceiptItemsWidget> createState() => _ReceiptItemsWidgetState();
}

class _ReceiptItemsWidgetState extends State<ReceiptItemsWidget> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () {
        AppRouter.pushNamed(context, AppRouter.receipt);
      },
      child: Container(
        padding: EdgeInsets.all(AppPaddings.paddingM),
        decoration: BoxDecoration(
          boxShadow: WidgetConfigs.boxShadow,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Column(
          spacing: AppSpacing.spacingS,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  AssetsPath.iocLogo,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: AppSpacing.spacingM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.testDalana,
                            style: AppTextStyles.bodyLargeMedium,
                          ),
                          Text(
                            'LKR 0.00',
                            style: AppTextStyles.bodySmallRegular,
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.spacingS),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '30 Mar 09.39',
                            style: AppTextStyles.bodyMediumRegular.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBlue,
                              borderRadius: BorderRadius.circular(
                                AppRadius.medium,
                              ),
                            ),
                            width: 90,
                            height: 25,
                            child: Center(
                              child: Text(
                                '+12 Fuelz',
                                style: AppTextStyles.bodySmallRegular.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(AppPaddings.paddingS),
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
              child: Row(
                spacing: AppSpacing.spacingS,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(AssetsPath.upload),
                  Text(
                    l10n.uploadReceipt,
                    style: AppTextStyles.bodySmallRegular,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
