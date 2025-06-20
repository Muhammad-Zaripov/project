import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/widgets/primary_button.dart';
import 'package:wallet/core/widgets/text_fields/name_text_field.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_dropdown/dropdown_button2.dart';
import '../widgets/plant_trees_widget.dart';
import '../widgets/test_bank_widget.dart';

class DirectDonationScreen extends StatefulWidget {
  const DirectDonationScreen({super.key});

  @override
  State<DirectDonationScreen> createState() => _DirectDonationScreenState();
}

class _DirectDonationScreenState extends State<DirectDonationScreen> {
  String? _selectedBank;

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.grey, width: 1),
    );
  }

  OutlineInputBorder _buildFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.primaryBlue, width: 1),
    );
  }

  OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.error, width: 1),
    );
  }

  OutlineInputBorder _buildDisabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.grey, width: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Direct Donation'),
      body: Padding(
        padding: EdgeInsets.all(AppPaddings.defaultBottomPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlantTreesWidget(),
            SizedBox(height: 16),
            TestBankWidget(),
            SizedBox(height: 16),
            Text('Bank Account', style: AppTextStyles.bodyLargeRegular),
            SizedBox(height: 8),
            DropdownButtonFormField2<String>(
              iconStyleData: const IconStyleData(
                icon: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              hint: Text(
                "********9464",
                style: AppTextStyles.bodyLargeRegular.withColor(
                  AppColors.grey600,
                ),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                border: _buildBorder(),
                enabledBorder: _buildBorder(),
                focusedBorder: _buildFocusedBorder(),
                errorBorder: _buildErrorBorder(),
                disabledBorder: _buildDisabledBorder(),
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppRadius.medium),
                ),
              ),
              value: _selectedBank,
              items: ['Bank A', 'Bank B', 'Bank C'].map((String bank) {
                return DropdownMenuItem<String>(
                  value: bank,
                  child: Text(bank, style: AppTextStyles.bodyLargeRegular),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedBank = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            NameTextField(label: 'Rs to Donate'),
            SizedBox(height: 16),
            PrimaryButton(
              text: 'Donate',
              onPressed: () {
                AppRouter.pushNamed(context, AppRouter.thanks);
              },
            ),
          ],
        ),
      ),
    );
  }
}
