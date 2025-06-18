import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/navigation/app_router.dart';

import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/widget_configs.dart';
import '../../../../core/localization/generated/app_localizations.dart';

class PurchaseHistoryWidget extends StatefulWidget {
  const PurchaseHistoryWidget({super.key});

  @override
  State<PurchaseHistoryWidget> createState() => _PurchaseHistoryWidgetState();
}

class _PurchaseHistoryWidgetState extends State<PurchaseHistoryWidget> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () {
        AppRouter.pushNamed(context, AppRouter.purchaseHistory);
      },

      child: Container(
        padding: EdgeInsets.all(AppPaddings.paddingM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.medium),
          boxShadow: WidgetConfigs.boxShadow,
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: AppSpacing.spacingXs,
              children: [
                SvgPicture.asset(AssetsPath.carbonPurchase),
                SizedBox(width: AppSpacing.spacingS),
                Text(
                  l10n.purchaseHistory,
                  style: AppTextStyles.bodyLargeSemiBold,
                ),
              ],
            ),
            Image.asset(AssetsPath.left),
          ],
        ),
      ),
    );
  }
}
