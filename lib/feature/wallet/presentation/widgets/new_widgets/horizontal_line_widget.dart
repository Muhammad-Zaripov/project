import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class HorizontalLineWidget extends StatelessWidget {
  const HorizontalLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 1, color: AppColors.grey);
  }
}
