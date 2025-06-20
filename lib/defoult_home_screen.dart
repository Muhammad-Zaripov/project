import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/widgets/custom_card.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_radius.dart';
import 'feature/fueling/presentation/screens/fueling_station_widget.dart';
import 'feature/fueling/presentation/widgets/fulling_station.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => FuelingStationWidget(),
          );
        },
      ),
    );
  }
}
