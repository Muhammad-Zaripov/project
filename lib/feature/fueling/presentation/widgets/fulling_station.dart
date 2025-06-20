import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/assets_path.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_text_styles.dart';

class FullingStation extends StatelessWidget {
  const FullingStation({super.key});

  @override
  Widget build(BuildContext context) {
    final List icons = [
      AssetsPath.fuel,
      AssetsPath.carwash,
      AssetsPath.charger,
      AssetsPath.bed,
      AssetsPath.food,
      AssetsPath.drink,
    ];
    return Container(
      padding: EdgeInsets.all(AppPaddings.paddingXS),
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppRadius.large),
          topRight: Radius.circular(AppRadius.large),
        ),
      ),
      width: double.infinity,
      child: Column(
        spacing: AppSpacing.spacing2xl,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: AppPaddings.defaultBottomPadding,
              ),
              child: Text(
                'Services',
                style: AppTextStyles.heading2SemiBold.copyWith(
                  fontFamily: 'Gilroy-Regular',
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              padding: EdgeInsets.all(12),
              children: List.generate(
                icons.length,
                (index) => Container(
                  padding: EdgeInsets.all(AppPaddings.defaultBottomPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.circle),
                    border: Border.all(width: 2, color: AppColors.grey),
                  ),
                  child: SvgPicture.asset(
                    icons[index],
                    width: 45,
                    height: 45,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
