import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/defoult_home_screen.dart';
import 'package:wallet/feature/wallet/presentation/screens/wallet_screen.dart';
import '../constants/app_colors.dart';
import '../constants/app_radius.dart';
import '../constants/app_spacing.dart';
import '../constants/assets_path.dart';
import 'navigation_cubit.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: _buildItems(state),
            onTap: context.read<NavigationCubit>().changeIndex,
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildItems(int selectedIndex) {
    return [
      BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 44,
          width: 44,
          padding: EdgeInsets.all(AppSpacing.spacingXs),
          decoration: BoxDecoration(
            color: _getBackgroundColor(selectedIndex == 0),
            borderRadius: BorderRadius.circular(AppRadius.circle),
            border: BoxBorder.all(
              color: _getBorderColor(selectedIndex == 0),
              width: 1,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AssetsPath.home,
              height: 24,
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 44,
          width: 44,
          padding: EdgeInsets.all(AppSpacing.spacingXs),
          decoration: BoxDecoration(
            color: _getBackgroundColor(selectedIndex == 1),
            borderRadius: BorderRadius.circular(AppRadius.circle),
            border: BoxBorder.all(
              color: _getBorderColor(selectedIndex == 1),
              width: 1,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AssetsPath.location,
              height: 24,
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 44,
          width: 44,
          padding: EdgeInsets.all(AppSpacing.spacingXs),
          decoration: BoxDecoration(
            color: _getBackgroundColor(selectedIndex == 2),
            borderRadius: BorderRadius.circular(AppRadius.circle),
            border: BoxBorder.all(
              color: _getBorderColor(selectedIndex == 2),
              width: 1,
            ),
          ),
          child: Center(
            child: Image.asset(
              AssetsPath.search,
              height: 28,
              width: 28,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 44,
          width: 44,
          padding: EdgeInsets.all(AppSpacing.spacingXs),
          decoration: BoxDecoration(
            color: _getBackgroundColor(selectedIndex == 3),
            borderRadius: BorderRadius.circular(AppRadius.circle),
            border: BoxBorder.all(
              color: _getBorderColor(selectedIndex == 3),
              width: 1,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AssetsPath.fuelStation,
              height: 24,
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 44,
          width: 44,
          padding: EdgeInsets.all(AppSpacing.spacingXs),
          decoration: BoxDecoration(
            color: _getBackgroundColor(selectedIndex == 4),
            borderRadius: BorderRadius.circular(AppRadius.circle),
            border: BoxBorder.all(
              color: _getBorderColor(selectedIndex == 4),
              width: 1,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AssetsPath.wallet,
              height: 24,
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    ];
  }

  Widget _buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return PlacePage(pageName: "Location");
      case 2:
        return PlacePage(pageName: "Search");
      case 3:
        return PlacePage(pageName: "Refueling");
      case 4:
        return WalletScreen();

      default:
        return HomeScreen();
    }
  }

  Color _getBorderColor(bool isSelected) {
    return isSelected ? AppColors.primaryGreen : AppColors.grey;
  }

  Color _getBackgroundColor(bool isSelected) {
    return isSelected ? AppColors.primaryGreen : AppColors.transparent;
  }
}

class PlacePage extends StatelessWidget {
  const PlacePage({super.key, required this.pageName});

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(pageName)));
  }
}
