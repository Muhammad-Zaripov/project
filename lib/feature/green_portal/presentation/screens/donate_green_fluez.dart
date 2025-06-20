import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/widgets/custom_app_bar.dart';
import 'package:wallet/core/widgets/text_fields/name_text_field.dart';
import 'package:wallet/feature/green_portal/presentation/widgets/plant_trees_widget.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/widgets/primary_button.dart';

class DonateGreenFluezScreen extends StatelessWidget {
  const DonateGreenFluezScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Donate Green Fuelz'),
      body: Padding(
        padding: EdgeInsets.all(AppPaddings.defaultBottomPadding),
        child: Column(
          children: [
            PlantTreesWidget(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fuelz to Donate', style: AppTextStyles.bodyLargeRegular),
                Row(
                  children: [
                    Text('7500', style: AppTextStyles.bodyLargeRegular),
                    Image.asset(
                      AssetsPath.piecee3,
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            NameTextField(isEnabledLabel: false),
            SizedBox(height: 16),
            NameTextField(label: 'Liters to Donate'),
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
