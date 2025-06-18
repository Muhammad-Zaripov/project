import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class VerticalLineWidget extends StatelessWidget {
  const VerticalLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 56, color: AppColors.grey);
  }
}
