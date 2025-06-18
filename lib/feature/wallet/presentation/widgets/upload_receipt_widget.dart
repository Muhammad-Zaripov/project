import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/widget_configs.dart';

import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'new_widgets/horizontal_line_widget.dart';

class UploadReceiptWidget extends StatefulWidget {
  const UploadReceiptWidget({super.key});

  @override
  State<UploadReceiptWidget> createState() => _UploadReceiptWidgetState();
}

class _UploadReceiptWidgetState extends State<UploadReceiptWidget> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(AppPaddings.paddingL),
      decoration: BoxDecoration(
        boxShadow: WidgetConfigs.boxShadow,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      child: Column(
        spacing: AppSpacing.spacingM,
        children: [
          Row(
            spacing: AppSpacing.spacingM,
            children: [
              Image.asset(AssetsPath.iocLogo),
              Column(
                spacing: AppSpacing.spacingXs,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.testDalana, style: AppTextStyles.bodyLargeSemiBold),
                  Text(
                    '24 Jan, 07.59',
                    style: AppTextStyles.bodyMediumRegular.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.total, style: AppTextStyles.heading2SemiBold),
              Text('LKR 1,842.33', style: AppTextStyles.heading2SemiBold),
            ],
          ),
          HorizontalLineWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.initialAmount, style: AppTextStyles.bodyMediumMedium),
              Text('LKR 1,842.33', style: AppTextStyles.bodyMediumMedium),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.spendFuelz, style: AppTextStyles.bodyMediumMedium),
              Text('LKR 0.00', style: AppTextStyles.bodyMediumMedium),
            ],
          ),
        ],
      ),
    );
  }
}
