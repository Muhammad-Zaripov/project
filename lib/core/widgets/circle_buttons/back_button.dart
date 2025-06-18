import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'base_circle_button.dart';

class BackButtons extends StatelessWidget {
  const BackButtons({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return BaseCircleButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!.call();
        } else {
          Navigator.pop(context);
        }
      },
      icon: Icons.arrow_back_ios_rounded,
      iconColor: AppColors.black,
      overlayColor: AppColors.black,
      iconSize: 20,
    );
  }
}
