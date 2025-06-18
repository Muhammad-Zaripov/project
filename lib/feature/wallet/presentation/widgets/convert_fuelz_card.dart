import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/localization/generated/app_localizations.dart';

class ConvertFuelzCard extends StatefulWidget {
  const ConvertFuelzCard({super.key});

  @override
  State<ConvertFuelzCard> createState() => _ConvertFuelzCardState();
}

class _ConvertFuelzCardState extends State<ConvertFuelzCard> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(AppPaddings.paddingM),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        gradient: LinearGradient(colors: AppColors.blurGradient1),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            spacing: AppSpacing.spacingS,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.convertFuelz,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: AppTextStyles.bodyLargeSemiBold,
              ),
              SizedBox(
                width: 280,
                child: Text(
                  l10n.changeFuelzToGreen,
                  maxLines: 2,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
          Positioned(
            top: -5,
            right: 22,
            child: Image.asset(AssetsPath.piecee3, width: 41, height: 33),
          ),
          Positioned(
            right: -5,
            bottom: -10,
            child: Image.asset(AssetsPath.piecee2, width: 85, height: 73),
          ),
        ],
      ),
    );
  }
}
