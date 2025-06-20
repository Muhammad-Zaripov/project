import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_spacing.dart';
import 'package:wallet/core/widgets/primary_button.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_radius.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/constants/widget_configs.dart';
import '../widgets/custom_line_chart_widget.dart';
import '../widgets/jayalaz_lanka_widget.dart';
import '../widgets/services_widget.dart';

class FuelingStationWidget extends StatefulWidget {
  const FuelingStationWidget({super.key});
  @override
  State<FuelingStationWidget> createState() => _FuelingStationWidgetState();
}

class _FuelingStationWidgetState extends State<FuelingStationWidget> {
  void _showProofSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRadius.medium),
            ),
            boxShadow: WidgetConfigs.boxShadow,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                top: 100,
                child: Image.asset(
                  AssetsPath.receipt,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Positioned(
                top: 30,
                right: 16,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPaddings.defaultBottomPadding),
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
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 4,
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacing.spacing2xl,
                children: [
                  SizedBox(),
                  JayalazLankaWidget(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: AppSpacing.spacingM,
                      children: [
                        InkWell(
                          onTap: _showProofSheet,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppRadius.medium,
                            ),
                            child: Image.asset(
                              AssetsPath.fuelStation,
                              width: 104,
                              height: 104,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomLineChartWidget(),
                  ServicesWidget(),
                  PrimaryButton(
                    text: 'Get Direction',
                    leadingIcon: SvgPicture.asset(AssetsPath.vector),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
