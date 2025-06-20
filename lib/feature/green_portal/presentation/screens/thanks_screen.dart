import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/constants/app_text_styles.dart';
import 'package:wallet/core/widgets/custom_app_bar.dart';
import 'package:wallet/core/widgets/custom_card.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/assets_path.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.defaultBottomPadding,
        ),
        child: Column(
          spacing: AppSpacing.spacing2xl,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AssetsPath.thanksImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'Thank you for supporting social projects',
              style: AppTextStyles.heading2SemiBold,
              textAlign: TextAlign.center,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'Every donation counts. Every step you take makes an impact.',
              style: AppTextStyles.bodyLargeRegular.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),

            CustomCard(
              margin: EdgeInsets.all(0),
              child: Column(
                children: [
                  SvgPicture.asset(AssetsPath.badge),
                  SizedBox(height: 12),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '👍 You get new badge',
                    style: AppTextStyles.bodyLargeSemiBold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'They have this badge',
                      style: AppTextStyles.bodyLargeRegular,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    child: Stack(
                      children: [
                        for (int i = 5 - 1; i >= 0; i--)
                          Positioned(
                            left: (i * 37),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                AppRadius.circle,
                              ),
                              child: Image.asset(
                                AssetsPath.person,
                                width: 44,
                                height: 44,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
