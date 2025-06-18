import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/navigation/navigation_cubit.dart';
// import 'package:http/http.dart' as http;

// Import your repositories, data sources, blocs, use cases here
// Example:
// import 'package:fuelback_global/features/authentication/data/datasources/auth_remote_datasource.dart';
// import 'package:fuelback_global/features/authentication/data/repositories/auth_repository_impl.dart';
// import 'package:fuelback_global/features/authentication/domain/repositories/auth_repository.dart';
// import 'package:fuelback_global/features/authentication/domain/usecases/sign_in_usecase.dart';
// import 'package:fuelback_global/features/authentication/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  _initMain();

  //! Features
  // Authentication
  _initAuthentication();

  // Home
  _initHome();

  // Wallet
  _initWallet();

  // Banking
  _initBanking();

  // Payment
  _initPayment();

  // Fuel Purchase
  _initFuelPurchase();

  // Refueling
  _initRefueling();

  // Map
  _initMap();

  // Profile
  _initProfile();

  // Notifications
  _initNotifications();

  //! Core
  _initCore();

  //! External
  await _initExternal();
}

void _initMain() {
  // Bloc/Cubit
  sl.registerFactory(() => NavigationCubit());
}

void _initAuthentication() {
  // Bloc
  // sl.registerFactory(
  //   () => AuthBloc(
  //     signInUseCase: sl(),
  //     signUpUseCase: sl(),
  //     verifyOtpUseCase: sl(),
  //   ),
  // );

  // Use cases
  // sl.registerLazySingleton(() => SignInUseCase(sl()));
  // sl.registerLazySingleton(() => SignUpUseCase(sl()));
  // sl.registerLazySingleton(() => VerifyOtpUseCase(sl()));

  // Repository
  // sl.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     remoteDataSource: sl(),
  //     localDataSource: sl(),
  //   ),
  // );

  // Data sources
  // sl.registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(client: sl()),
  // );
  // sl.registerLazySingleton<AuthLocalDataSource>(
  //   () => AuthLocalDataSourceImpl(sharedPreferences: sl()),
  // );
}

void _initHome() {
  // Add Home feature dependencies
}

void _initWallet() {
  // Add Wallet feature dependencies
}

void _initBanking() {
  // Add Banking feature dependencies
}

void _initPayment() {
  // Add Payment feature dependencies
}

void _initFuelPurchase() {
  // Add Fuel Purchase feature dependencies
}

void _initRefueling() {
  // Add Refueling feature dependencies
}

void _initMap() {
  // Add Map feature dependencies
}

void _initProfile() {
  // Add Profile feature dependencies
}

void _initNotifications() {
  // Add Notifications feature dependencies
}

void _initCore() {
  // Add core dependencies
  // Example:
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> _initExternal() async {
  // External dependencies
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());

  // Add other external dependencies like:
  // - Dio client
  // - Firebase instances
  // - Local database instances
  // - etc.
}

// Helper function to check if a dependency is registered
bool isRegistered<T extends Object>() {
  return sl.isRegistered<T>();
}

// Helper function to reset all dependencies (useful for testing)
Future<void> reset() async {
  await sl.reset();
  await init();
}
