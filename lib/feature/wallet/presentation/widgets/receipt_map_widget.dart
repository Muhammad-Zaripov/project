import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/feature/wallet/presentation/widgets/new_widgets/horizontal_line_widget.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/widget_configs.dart';
import '../../../../core/localization/generated/app_localizations.dart';

class ReceiptMapWidget extends StatefulWidget {
  const ReceiptMapWidget({super.key});

  @override
  State<ReceiptMapWidget> createState() => _ReceiptMapWidgetState();
}

class _ReceiptMapWidgetState extends State<ReceiptMapWidget> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPaddings.paddingL),
      decoration: BoxDecoration(
        boxShadow: WidgetConfigs.boxShadow,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      child: Column(
        spacing: AppSpacing.spacingL,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.details, style: AppTextStyles.heading1SemiBold),
          HorizontalLineWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.receivedFuelz,
                style: AppTextStyles.bodyMediumSemiBold.copyWith(
                  color: AppColors.primaryBlue,
                ),
              ),
              Text(
                '+LKR 0.00 Fuelz',
                style: AppTextStyles.bodyMediumSemiBold.copyWith(
                  color: AppColors.primaryBlue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.fuelType, style: AppTextStyles.bodyMediumSemiBold),
              Text(l10n.autoDiesel, style: AppTextStyles.bodyMediumSemiBold),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.liters, style: AppTextStyles.bodyMediumSemiBold),
              Text('6.51 L', style: AppTextStyles.bodyMediumSemiBold),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.paymentMethod, style: AppTextStyles.bodyMediumSemiBold),
              Text('Cash', style: AppTextStyles.bodyMediumSemiBold),
            ],
          ),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.medium),
                child: Image.asset(
                  AssetsPath.map,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 140,
                bottom: 70,
                child: SvgPicture.asset(AssetsPath.mapLocation),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
