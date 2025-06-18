import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_paddings.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/purchase_history_item.dart';

class PurchaseHistoryScreen extends StatefulWidget {
  const PurchaseHistoryScreen({super.key});

  @override
  State<PurchaseHistoryScreen> createState() => _PurchaseHistoryScreenState();
}

class _PurchaseHistoryScreenState extends State<PurchaseHistoryScreen> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: l10n.purchaseHistory),
      body: ListView.separated(
        padding: EdgeInsets.all(AppPaddings.paddingL),
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) => PurchaseHistoryItem(complate: true),
      ),
    );
  }
}
