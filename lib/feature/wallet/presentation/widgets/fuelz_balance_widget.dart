import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';

import '../../../../core/constants/app_radius.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'new_widgets/vertical_line_widget.dart';

class FuelzBalanceWidget extends StatefulWidget {
  const FuelzBalanceWidget({super.key});

  @override
  State<FuelzBalanceWidget> createState() => _FuelzBalanceWidgetState();
}

class _FuelzBalanceWidgetState extends State<FuelzBalanceWidget> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.semiMedium),
      ),
      padding: EdgeInsets.all(AppPaddings.paddingS),
      child: Column(
        spacing: AppSpacing.spacingS,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SP96-E12',
            style: AppTextStyles.bodyMediumSemiBold.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),

          Row(
            spacing: AppSpacing.spacingS,
            children: [
              Column(
                spacing: AppSpacing.spacingS,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('13.00 L', style: AppTextStyles.heading1Bold),
                  Text(l10n.litersBalance, style: AppTextStyles.captionRegular),
                ],
              ),
              VerticalLineWidget(),
              Column(
                spacing: AppSpacing.spacingS,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('67.00 L', style: AppTextStyles.heading1Bold),
                  Text(l10n.gas, style: AppTextStyles.captionRegular),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
