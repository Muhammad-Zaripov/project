import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_text_styles.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/widget_configs.dart';
import '../../../../core/widgets/custom_card.dart';

class CustomLineChartWidget extends StatefulWidget {
  const CustomLineChartWidget({super.key});

  @override
  State<CustomLineChartWidget> createState() => _CustomLineChartWidgetState();
}

class _CustomLineChartWidgetState extends State<CustomLineChartWidget> {
  int selectedPeriod = 0;

  Map<int, List<FlSpot>> chartData = {
    0: [FlSpot(0, 317), FlSpot(1, 310), FlSpot(2, 295)],
    1: [
      FlSpot(0, 317),
      FlSpot(1, 310),
      FlSpot(2, 305),
      FlSpot(3, 300),
      FlSpot(4, 298),
      FlSpot(5, 295),
    ],
    2: [
      FlSpot(0, 320),
      FlSpot(1, 317),
      FlSpot(2, 313),
      FlSpot(3, 310),
      FlSpot(4, 305),
      FlSpot(5, 300),
      FlSpot(6, 298),
      FlSpot(7, 295),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppPaddings.paddingM,
        right: AppPaddings.paddingM,
        top: AppPaddings.paddingM,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        color: Colors.white,
        boxShadow: WidgetConfigs.boxShadow,
      ),
      width: double.infinity,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.disabledBackground,
              borderRadius: BorderRadius.circular(AppRadius.medium),
            ),
            padding: EdgeInsets.all(AppPaddings.paddingXS),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPeriodButton('3M', 0),
                const SizedBox(width: 8),
                _buildPeriodButton('6M', 1),
                const SizedBox(width: 8),
                _buildPeriodButton('1Y', 2),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 53,
                    top: 15,
                    right: 35,
                    bottom: 15,
                  ),
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(show: false),
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: chartData[selectedPeriod]!,
                          isCurved: true,
                          curveSmoothness: 0.3,
                          color: Colors.black,
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) {
                              return FlDotCirclePainter(
                                radius: 2,
                                color: Colors.black,
                                strokeWidth: 3,
                                strokeColor: Colors.black,
                              );
                            },
                          ),
                          belowBarData: BarAreaData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 0,
                bottom: 0,
                child: Container(width: 2, color: AppColors.textSecondary),
              ),
              Positioned(
                left: 0,
                right: 30,
                bottom: 8,
                child: FractionallySizedBox(
                  widthFactor: 0.90,
                  alignment: Alignment.centerRight,
                  child: Container(height: 2, color: AppColors.textSecondary),
                ),
              ),
              Positioned(
                left: 5,
                top: 0,
                bottom: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _buildYAxisLabels(),
                ),
              ),
              Positioned(
                bottom: -34,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 34,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _buildMonthLabels(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildYAxisLabels() {
    List<int> yValues = [317, 309, 301, 293, 287];
    return yValues.map((val) {
      return Row(
        spacing: 5,
        children: [
          Text(
            val.toString(),
            style: AppTextStyles.bodySmallRegular.copyWith(
              fontFamily: ' Gilroy-Medium',
              color: AppColors.textSecondary,
            ),
          ),
          Container(width: 10, height: 1, color: const Color(0xff979797)),
        ],
      );
    }).toList();
  }

  Widget _buildPeriodButton(String text, int index) {
    final isSelected = selectedPeriod == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPeriod = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: isSelected ? WidgetConfigs.boxShadow : null,
        ),
        child: Text(
          text,
          style: isSelected
              ? AppTextStyles.bodySmallSemiBold.copyWith(
                  fontFamily: 'Gilroy-Regular',
                )
              : AppTextStyles.bodySmallRegular.copyWith(
                  fontFamily: 'Gilroy-Regular',
                ),
        ),
      ),
    );
  }

  List<Widget> _buildMonthLabels() {
    List<String> months3M = ['Jun', 'Jul', 'Aug'];
    List<String> months6M = ['Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'];
    List<String> months1Y = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    List<String> months = [];
    if (selectedPeriod == 0) {
      months = months3M;
    } else if (selectedPeriod == 1) {
      months = months6M;
    } else {
      months = months1Y;
    }

    return months.map((m) {
      return Column(
        children: [
          Container(width: 1, height: 10, color: const Color(0xff979797)),
          Text(
            m,
            style: AppTextStyles.bodySmallRegular.copyWith(
              fontFamily: ' Gilroy-Medium',
              color: AppColors.textSecondary,
            ),
          ),
        ],
      );
    }).toList();
  }
}
