import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/widgets/custom_card.dart';

class JayalazLankaWidget extends StatelessWidget {
  const JayalazLankaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.zero,
      child: Row(
        children: [
          Image.asset(
            AssetsPath.iocLogo,
            width: 66,
            height: 66,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              spacing: AppSpacing.spacingXs,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jayalath Lanka IOC',
                      style: AppTextStyles.bodyMediumSemiBold.copyWith(
                        fontFamily: 'Gilroy-Regular',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppPaddings.paddingS,
                        vertical: AppPaddings.paddingXS,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(
                          AppRadius.semiMedium,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 16, color: Color(0xffF6F02C)),
                          Text(
                            '4,7',
                            style: AppTextStyles.captionRegular.copyWith(
                              fontFamily: 'Gilroy-Regular',
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  '172 Wandurmmulla',
                  style: AppTextStyles.bodyMediumRegular.copyWith(
                    fontFamily: 'Gilroy-Regular',
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  'THU: 05:00 AM to 08:00 PM',
                  style: AppTextStyles.bodySmallSemiBold.copyWith(
                    fontFamily: 'Gilroy-Regular',
                    color: AppColors.primaryBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
