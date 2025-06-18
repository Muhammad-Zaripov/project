import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';
import 'circle_buttons/back_button.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    super.key,
    this.title = '',
    this.onPressed,
    this.paddingLeft = 0,
  });

  final String title;
  final VoidCallback? onPressed;
  final double paddingLeft;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: kTextTabBarHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 56,
            right: 56,
            child: Text(
              title,
              style: AppTextStyles.heading2SemiBold,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: paddingLeft,
            child: BackButtons(onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
