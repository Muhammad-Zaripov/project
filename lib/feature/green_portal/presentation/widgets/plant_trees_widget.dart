import 'package:flutter/material.dart';

import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/widgets/custom_card.dart';

class PlantTreesWidget extends StatelessWidget {
  const PlantTreesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.medium),
            child: Image.asset(
              AssetsPath.complatedImage,
              width: double.infinity,
              height: 116,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Plant 100K trees',
            style: AppTextStyles.bodyLargeSemiBold.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),

          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            "Join our green initiative to transform Sri Lanka's landscape...",
            style: AppTextStyles.bodyMediumRegular.copyWith(
              fontWeight: FontWeight.w400,
              color: Color(0xff4E5157),
            ),
          ),
        ],
      ),
    );
  }
}
