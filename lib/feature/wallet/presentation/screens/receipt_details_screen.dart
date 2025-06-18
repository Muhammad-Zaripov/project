import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/proof_transaction_widget.dart';
import '../widgets/receipt_map_widget.dart';
import '../widgets/upload_receipt_widget.dart';

class ReceiptDetailsScreen extends StatefulWidget {
  const ReceiptDetailsScreen({super.key});

  @override
  State<ReceiptDetailsScreen> createState() => _ReceiptDetailsScreenState();
}

class _ReceiptDetailsScreenState extends State<ReceiptDetailsScreen> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: l10n.receipt),
      body: Padding(
        padding: EdgeInsets.all(AppPaddings.defaultPadding),
        child: Column(
          spacing: AppSpacing.spacingM,
          children: [
            UploadReceiptWidget(),
            Padding(
              padding: const EdgeInsets.only(
                top: AppPaddings.paddingXS,
                bottom: AppPaddings.paddingXS,
              ),
              child: ReceiptMapWidget(),
            ),
            ProofTransactionWidget(),
          ],
        ),
      ),
    );
  }
}
