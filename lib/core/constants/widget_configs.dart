import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class WidgetConfigs {
  WidgetConfigs._();

  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: AppColors.shadowColor,
      offset: Offset(0, 10),
      blurRadius: 24,
      spreadRadius: 0,
    ),
  ];
}
