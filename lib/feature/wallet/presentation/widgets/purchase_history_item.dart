import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/widget_configs.dart';
import 'package:wallet/core/navigation/app_router.dart';

import '../../../../core/constants/assets_path.dart';
import '../../../../core/localization/generated/app_localizations.dart';

class PurchaseHistoryItem extends StatefulWidget {
  final bool complate;
  const PurchaseHistoryItem({super.key, this.complate = false});

  @override
  State<PurchaseHistoryItem> createState() => _PurchaseHistoryItemState();
}

class _PurchaseHistoryItemState extends State<PurchaseHistoryItem> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return InkWell(
      onTap: () {
        AppRouter.pushNamed(context, AppRouter.receipt);
      },
      child: Container(
        padding: EdgeInsets.all(AppPaddings.paddingM),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: WidgetConfigs.boxShadow,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Row(
          spacing: AppSpacing.spacingM,
          children: [
            SvgPicture.asset(AssetsPath.hugeiconsWallet),
            Expanded(
              child: Column(
                spacing: AppSpacing.spacingXs,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Test Bank', style: AppTextStyles.bodyLargeMedium),
                      Container(
                        height: 25,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.paddingS,
                          vertical: AppPaddings.padding2XS,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppRadius.medium),
                          color: widget.complate
                              ? AppColors.primaryGreen
                              : AppColors.grey,
                        ),
                        child: Center(
                          child: Text(
                            widget.complate ? l10n.completed : l10n.pending,
                            style: AppTextStyles.bodySmallRegular,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Athurugiriya Lanka IOC',
                    style: AppTextStyles.bodyMediumRegular.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '27 Apr, 03.47',
                        style: AppTextStyles.bodyMediumRegular.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Text(
                        'LKR 1,000.00',
                        style: AppTextStyles.bodySmallRegular,
                      ),
                    ],
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
