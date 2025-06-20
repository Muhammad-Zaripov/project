import 'package:flutter/material.dart';
import 'package:wallet/feature/green_portal/presentation/screens/direct_donation_screen.dart';
import 'package:wallet/feature/green_portal/presentation/screens/donate_green_fluez.dart';
import 'package:wallet/feature/green_portal/presentation/screens/thanks_screen.dart';
import 'package:wallet/feature/wallet/presentation/screens/receipt_details_screen.dart';

import '../../feature/wallet/presentation/screens/purchase_history_screen.dart';
import '../../feature/wallet/presentation/screens/wallet_screen.dart';
import 'main_navigation_screen.dart';

// import 'package:fuelback_global/features/profile/presentation/screens/profile_screen.dart';
// import 'package:fuelback_global/features/profile/presentation/screens/account_information_screen.dart';
// import 'package:fuelback_global/features/banking/presentation/screens/bank_accounts_screen.dart';
// import 'package:fuelback_global/features/banking/presentation/screens/add_bank_account_screen.dart';
// import 'package:fuelback_global/features/wallet/presentation/screens/purchase_history_screen.dart';
// import 'package:fuelback_global/features/wallet/presentation/screens/receipt_details_screen.dart';
// import 'package:fuelback_global/features/notifications/presentation/screens/notifications_screen.dart';
// import 'package:fuelback_global/features/fuel_purchase/presentation/screens/fuel_purchase_form_screen.dart';
// import 'package:fuelback_global/features/payment/presentation/screens/payment_checkout_screen.dart';

class AppRouter {
  // Route names
  // static const String splash = '/';
  static const String splash = '/splash';
  static const String authSelection = '/auth-selection';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String phoneVerification = '/phone-verification';
  // static const String main = '/main';
  static const String main = '/';
  static const String profile = '/profile';
  static const String accountInformation = '/account-information';
  static const String bankAccounts = '/bank-accounts';
  static const String addBankAccount = '/add-bank-account';
  static const String purchaseHistory = '/purchase-history';
  static const String receiptDetails = '/receipt-details';
  static const String notifications = '/notifications';
  static const String fuelPurchase = '/fuel-purchase';
  static const String paymentCheckout = '/payment-checkout';
  //new
  static const String wallet = '/wallet';
  static const String receipt = '/receipt';
  static const String donateGreenFluez = '/donate-green-fluez';
  static const String directDonation = '/direct-donation';
  static const String thanks = '/thanks';

  // Route generator
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case wallet:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case receipt:
        return MaterialPageRoute(builder: (_) => const ReceiptDetailsScreen());
      case donateGreenFluez:
        return MaterialPageRoute(
          builder: (_) => const DonateGreenFluezScreen(),
        );
      case directDonation:
        return MaterialPageRoute(builder: (_) => const DirectDonationScreen());
      case thanks:
        return MaterialPageRoute(builder: (_) => const ThanksScreen());
      // case splash:
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());

      // case authSelection:
      //   return MaterialPageRoute(builder: (_) => const AuthSelectionScreen());

      // case signIn:
      //   return MaterialPageRoute(builder: (_) => const SignInScreen());

      // case signUp:
      //   return MaterialPageRoute(builder: (_) => const SignUpScreen());

      // case phoneVerification:
      //   final args = settings.arguments as String;
      //   return MaterialPageRoute(
      //     builder: (_) => PhoneVerificationScreen(phoneNumber: args),
      //   );

      case main:
        return MaterialPageRoute(builder: (_) => const MainNavigationScreen());

      // case profile:
      //   return MaterialPageRoute(builder: (_) => const ProfileScreen());

      // case accountInformation:
      //   return MaterialPageRoute(
      //     builder: (_) => const AccountInformationScreen(),
      //   );

      // case bankAccounts:
      //   return MaterialPageRoute(builder: (_) => const BankAccountsScreen());

      // case addBankAccount:
      //   return MaterialPageRoute(builder: (_) => const AddBankAccountScreen());

      case purchaseHistory:
        return MaterialPageRoute(builder: (_) => const PurchaseHistoryScreen());

      // case receiptDetails:
      //   final receiptId = settings.arguments as String?;
      //   return MaterialPageRoute(
      //     builder: (_) => ReceiptDetailsScreen(receiptId: receiptId ?? ''),
      //   );

      // case notifications:
      //   return MaterialPageRoute(builder: (_) => const NotificationsScreen());

      // case fuelPurchase:
      //   return MaterialPageRoute(
      //     builder: (_) => const FuelPurchaseFormScreen(),
      //   );

      // case paymentCheckout:
      //   final args = settings.arguments as Map<String, dynamic>?;
      //   return MaterialPageRoute(
      //     builder: (_) =>
      //         PaymentCheckoutScreen(purchaseData: args?['purchaseData']),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  // Navigation helpers
  static Future<T?> pushNamed<T>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushNamed<T>(context, routeName, arguments: arguments);
  }

  static Future<T?> pushReplacementNamed<T, TO>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed<T, TO>(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> pushNamedAndRemoveUntil<T>(
    BuildContext context,
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return Navigator.pushNamedAndRemoveUntil<T>(
      context,
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  static void pop<T>(BuildContext context, [T? result]) {
    Navigator.pop<T>(context, result);
  }

  // Dispose method (if needed for cleanup)
  void dispose() {
    // Clean up resources if any
  }
}
