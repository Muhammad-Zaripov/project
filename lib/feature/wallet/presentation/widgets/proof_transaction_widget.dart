import 'package:flutter/material.dart';
import 'package:wallet/core/constants/assets_path.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/widget_configs.dart';
import '../../../../core/localization/generated/app_localizations.dart';

class ProofTransactionWidget extends StatefulWidget {
  const ProofTransactionWidget({super.key});

  @override
  State<ProofTransactionWidget> createState() => _ProofTransactionWidgetState();
}

class _ProofTransactionWidgetState extends State<ProofTransactionWidget> {
  late AppLocalizations l10n;

  void _showProofSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRadius.medium),
            ),
            boxShadow: WidgetConfigs.boxShadow,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                top: 100,
                child: Image.asset(
                  AssetsPath.receipt,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Positioned(
                top: 30,
                right: 16,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: _showProofSheet,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppPaddings.paddingM),
        decoration: BoxDecoration(
          boxShadow: WidgetConfigs.boxShadow,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                l10n.proofOfTransaction,
                style: AppTextStyles.bodyMediumSemiBold,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppPaddings.paddingS,
                vertical: AppPaddings.paddingXS,
              ),
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
              child: Row(
                children: [
                  Text('👁 ', style: AppTextStyles.captionRegular),
                  Text(l10n.viewReceipt, style: AppTextStyles.captionRegular),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
