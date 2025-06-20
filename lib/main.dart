// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/injection_container.dart' as di;
import 'app.dart';
import 'app_bloc_observer.dart';
import 'core/constants/app_colors.dart';

void main() async {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Set preferred orientations (portrait only)
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.transparent, // status bar color
    ),
  );
  // Initialize dependency injection
  await di.init();
  // Set Bloc observer for debugging
  Bloc.observer = AppBlocObserver();
  // Run the app
  runApp(const FuelBackApp());
}
