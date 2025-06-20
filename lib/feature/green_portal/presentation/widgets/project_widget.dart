import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/constants/assets_path.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/navigation/app_router.dart';
import 'goal_widget.dart';
import 'new/button_widget.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppRadius.large),
          topRight: Radius.circular(AppRadius.large),
        ),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.large),
                  topRight: Radius.circular(AppRadius.large),
                ),
                child: Image.asset(
                  AssetsPath.complatedImage,
                  width: double.infinity,
                  height: 212,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(AppRadius.medium),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppPaddings.defaultBottomPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Plant 100K trees',
                        style: AppTextStyles.heading2SemiBold.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(AppPaddings.paddingXS),
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(
                          AppRadius.semiMedium,
                        ),
                      ),
                      child: Text(
                        ' planet ',
                        style: AppTextStyles.bodySmallRegular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  "Join our green initiative to transform Sri Lanka's landscape. Join our green initiative to transform Sri Lanka's landscape...Join our green initiative to transform Sri Lanka's landscape. Join our green initiative to transform Sri Lanka's landscape.",
                  style: AppTextStyles.bodyLargeRegular.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4E5157),
                    fontFamily: 'Gilroy-Regular',
                  ),
                ),
                SizedBox(height: 16),
                Text('Funds collected', style: AppTextStyles.bodySmallRegular),
                SizedBox(height: 8),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: AppColors.grey,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor: 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('200', style: AppTextStyles.bodySmallRegular),
                    Text('Fuelz liters', style: AppTextStyles.bodySmallRegular),
                  ],
                ),
                SizedBox(height: 16),
                GoalWidget(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(
                      title: 'Direct donation',
                      onTap: () {
                        AppRouter.pushNamed(context, AppRouter.directDonation);
                      },
                      backgroundColor: AppColors.black,
                      textColor: AppColors.white,
                    ),

                    ButtonWidget(
                      title: 'Donate Green Fuelz',
                      onTap: () {
                        AppRouter.pushNamed(
                          context,
                          AppRouter.donateGreenFluez,
                        );
                      },
                      backgroundColor: AppColors.primaryGreen,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
