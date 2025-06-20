import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/feature/wallet/presentation/widgets/balance_card.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/convert_fuelz_card.dart';
import '../widgets/purchase_history_widget.dart';
import '../widgets/receipt_items_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  late AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: l10n.wallet),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(AppPaddings.defaultPadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                BalanceCard(),
                SizedBox(height: AppSpacing.spacingL),
                ConvertFuelzCard(),
                SizedBox(height: AppSpacing.spacingL),
                PurchaseHistoryWidget(),
                SizedBox(height: AppSpacing.spacingL),
              ]),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPaddings.defaultPadding,
            ),
            sliver: SliverList.separated(
              itemCount: 3,
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemBuilder: (context, index) => ReceiptItemsWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
