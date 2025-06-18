import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_cy.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('cy'),
    Locale('en'),
    Locale('ru'),
    Locale('si'),
    Locale('ta'),
    Locale('tg'),
    Locale('ur'),
    Locale('uz'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'FuelBack'**
  String get appName;

  /// No description provided for @phoneVerification.
  ///
  /// In en, this message translates to:
  /// **'Phone Verification'**
  String get phoneVerification;

  /// No description provided for @enterSixDigitCode.
  ///
  /// In en, this message translates to:
  /// **'Enter 6-digit code we sent by SMS'**
  String get enterSixDigitCode;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code?'**
  String get didntReceiveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @pleaseProvideInfo.
  ///
  /// In en, this message translates to:
  /// **'Please provide the following information'**
  String get pleaseProvideInfo;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailOptional.
  ///
  /// In en, this message translates to:
  /// **'Email (Optional)'**
  String get emailOptional;

  /// No description provided for @referralCode.
  ///
  /// In en, this message translates to:
  /// **'Referral Code'**
  String get referralCode;

  /// No description provided for @referralCodeOptional.
  ///
  /// In en, this message translates to:
  /// **'Referral Code (Optional)'**
  String get referralCodeOptional;

  /// No description provided for @vehicleType.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Type'**
  String get vehicleType;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @byContiuningYouAgree.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to our {privacyPolicy} and our {termsAndConditions}'**
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions);

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}'**
  String hello(Object name);

  /// No description provided for @fuelUp.
  ///
  /// In en, this message translates to:
  /// **'Fuel Up'**
  String get fuelUp;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @payBill.
  ///
  /// In en, this message translates to:
  /// **'Pay Bill'**
  String get payBill;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @sendFuelz.
  ///
  /// In en, this message translates to:
  /// **'Send Fuelz'**
  String get sendFuelz;

  /// No description provided for @lkrToShare.
  ///
  /// In en, this message translates to:
  /// **'LKR {amount} to share'**
  String lkrToShare(Object amount);

  /// No description provided for @socialPortal.
  ///
  /// In en, this message translates to:
  /// **'Social Portal'**
  String get socialPortal;

  /// No description provided for @myFuelzBalance.
  ///
  /// In en, this message translates to:
  /// **'My Fuelz Balance'**
  String get myFuelzBalance;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @totalAvailable.
  ///
  /// In en, this message translates to:
  /// **'Total Available'**
  String get totalAvailable;

  /// No description provided for @usable.
  ///
  /// In en, this message translates to:
  /// **'Usable'**
  String get usable;

  /// No description provided for @convertFuelz.
  ///
  /// In en, this message translates to:
  /// **'Convert Fuelz'**
  String get convertFuelz;

  /// No description provided for @purchaseHistory.
  ///
  /// In en, this message translates to:
  /// **'Purchase History'**
  String get purchaseHistory;

  /// No description provided for @carWash.
  ///
  /// In en, this message translates to:
  /// **'Car Wash'**
  String get carWash;

  /// No description provided for @fuelType.
  ///
  /// In en, this message translates to:
  /// **'Fuel Type'**
  String get fuelType;

  /// No description provided for @priceTracking.
  ///
  /// In en, this message translates to:
  /// **'Price Tracking'**
  String get priceTracking;

  /// No description provided for @recommendedForYou.
  ///
  /// In en, this message translates to:
  /// **'Recommended for You'**
  String get recommendedForYou;

  /// No description provided for @viewOnMap.
  ///
  /// In en, this message translates to:
  /// **'View on Map'**
  String get viewOnMap;

  /// No description provided for @getUpToGift.
  ///
  /// In en, this message translates to:
  /// **'Get up to {amount} L in gift'**
  String getUpToGift(Object amount);

  /// No description provided for @inviteFriendsToFuelBack.
  ///
  /// In en, this message translates to:
  /// **'Invite friends to FuelBack'**
  String get inviteFriendsToFuelBack;

  /// No description provided for @shareInvite.
  ///
  /// In en, this message translates to:
  /// **'Share invite'**
  String get shareInvite;

  /// No description provided for @youPayGivesBack.
  ///
  /// In en, this message translates to:
  /// **'You pay. {company} gives back.'**
  String youPayGivesBack(Object company);

  /// No description provided for @evenForBoringStuff.
  ///
  /// In en, this message translates to:
  /// **'Even for the boring stuff.'**
  String get evenForBoringStuff;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @myBalances.
  ///
  /// In en, this message translates to:
  /// **'My balances'**
  String get myBalances;

  /// No description provided for @litersBalance.
  ///
  /// In en, this message translates to:
  /// **'Liters Balance'**
  String get litersBalance;

  /// No description provided for @gas.
  ///
  /// In en, this message translates to:
  /// **'Gas'**
  String get gas;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @changeFuelzToGreen.
  ///
  /// In en, this message translates to:
  /// **'Change Fuelz to Green Fuelz and participate in Green projects'**
  String get changeFuelzToGreen;

  /// No description provided for @uploadReceipt.
  ///
  /// In en, this message translates to:
  /// **'Upload Receipt'**
  String get uploadReceipt;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @receipt.
  ///
  /// In en, this message translates to:
  /// **'Receipt'**
  String get receipt;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @initialAmount.
  ///
  /// In en, this message translates to:
  /// **'Initial amount'**
  String get initialAmount;

  /// No description provided for @spendFuelz.
  ///
  /// In en, this message translates to:
  /// **'Spend Fuelz'**
  String get spendFuelz;

  /// No description provided for @collectedFuelz.
  ///
  /// In en, this message translates to:
  /// **'Collected Fuelz'**
  String get collectedFuelz;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @receivedFuelz.
  ///
  /// In en, this message translates to:
  /// **'Received Fuelz'**
  String get receivedFuelz;

  /// No description provided for @liters.
  ///
  /// In en, this message translates to:
  /// **'Liters'**
  String get liters;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymentMethod;

  /// No description provided for @proofOfTransaction.
  ///
  /// In en, this message translates to:
  /// **'Proof of Transaction'**
  String get proofOfTransaction;

  /// No description provided for @viewReceipt.
  ///
  /// In en, this message translates to:
  /// **'View Receipt'**
  String get viewReceipt;

  /// No description provided for @bankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Bank Accounts'**
  String get bankAccounts;

  /// No description provided for @noBankAccountYet.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have a bank account yet'**
  String get noBankAccountYet;

  /// No description provided for @futureBankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Your future bank accounts will appear here.'**
  String get futureBankAccounts;

  /// No description provided for @connectNewBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Connect new bank account'**
  String get connectNewBankAccount;

  /// No description provided for @newBankAccount.
  ///
  /// In en, this message translates to:
  /// **'New bank account'**
  String get newBankAccount;

  /// No description provided for @bank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get bank;

  /// No description provided for @chooseYourBank.
  ///
  /// In en, this message translates to:
  /// **'Choose your bank'**
  String get chooseYourBank;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// No description provided for @nationalIdCardNumber.
  ///
  /// In en, this message translates to:
  /// **'National ID Card Number'**
  String get nationalIdCardNumber;

  /// No description provided for @setYourTransactionPin.
  ///
  /// In en, this message translates to:
  /// **'Set Your Transaction PIN'**
  String get setYourTransactionPin;

  /// No description provided for @securePaymentsBy.
  ///
  /// In en, this message translates to:
  /// **'Secure your payments by creating a 4-digit PIN. This PIN will be required for all transactions.'**
  String get securePaymentsBy;

  /// No description provided for @bankAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Bank account number'**
  String get bankAccountNumber;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @paymentCompleted.
  ///
  /// In en, this message translates to:
  /// **'Payment completed'**
  String get paymentCompleted;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentFailed;

  /// No description provided for @thankYouForPurchase.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your purchase'**
  String get thankYouForPurchase;

  /// No description provided for @backHome.
  ///
  /// In en, this message translates to:
  /// **'Back Home'**
  String get backHome;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @pleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get pleaseTryAgain;

  /// No description provided for @paymentProcessUnderway.
  ///
  /// In en, this message translates to:
  /// **'The payment process is underway'**
  String get paymentProcessUnderway;

  /// No description provided for @enterPinCode.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN Code'**
  String get enterPinCode;

  /// No description provided for @enterTransactionPin.
  ///
  /// In en, this message translates to:
  /// **'Enter transaction PIN'**
  String get enterTransactionPin;

  /// No description provided for @toConfirmPayment.
  ///
  /// In en, this message translates to:
  /// **'To confirm the payment, please enter your PIN code'**
  String get toConfirmPayment;

  /// No description provided for @toConfirmPaymentTransaction.
  ///
  /// In en, this message translates to:
  /// **'To confirm the payment, please enter your transaction PIN'**
  String get toConfirmPaymentTransaction;

  /// No description provided for @forgotPinCode.
  ///
  /// In en, this message translates to:
  /// **'Forgot PIN Code?'**
  String get forgotPinCode;

  /// No description provided for @forgotTransactionPin.
  ///
  /// In en, this message translates to:
  /// **'Forgot Transaction PIN?'**
  String get forgotTransactionPin;

  /// No description provided for @pinCodeIncorrect.
  ///
  /// In en, this message translates to:
  /// **'The Pin Code entered is incorrect. Please try again.'**
  String get pinCodeIncorrect;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @fuelback.
  ///
  /// In en, this message translates to:
  /// **'Fuelback'**
  String get fuelback;

  /// No description provided for @fuelbackUsed.
  ///
  /// In en, this message translates to:
  /// **'Fuelback used'**
  String get fuelbackUsed;

  /// No description provided for @creditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get creditCard;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @sendReceiptByEmail.
  ///
  /// In en, this message translates to:
  /// **'Send the receipt by email?'**
  String get sendReceiptByEmail;

  /// No description provided for @tips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get tips;

  /// No description provided for @tipsAmount.
  ///
  /// In en, this message translates to:
  /// **'Tips amount'**
  String get tipsAmount;

  /// No description provided for @noTip.
  ///
  /// In en, this message translates to:
  /// **'No tip'**
  String get noTip;

  /// No description provided for @leaveATip.
  ///
  /// In en, this message translates to:
  /// **'Leave a tip?'**
  String get leaveATip;

  /// No description provided for @thankEmployeeByTip.
  ///
  /// In en, this message translates to:
  /// **'You can thank the employee by leaving a tip'**
  String get thankEmployeeByTip;

  /// No description provided for @paymentMethodAdded.
  ///
  /// In en, this message translates to:
  /// **'A new payment method has been successfully added'**
  String get paymentMethodAdded;

  /// No description provided for @backToPaymentSelection.
  ///
  /// In en, this message translates to:
  /// **'Back to Payment selection'**
  String get backToPaymentSelection;

  /// No description provided for @newTitle.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newTitle;

  /// No description provided for @montant.
  ///
  /// In en, this message translates to:
  /// **'Montant'**
  String get montant;

  /// No description provided for @purchaseFuel.
  ///
  /// In en, this message translates to:
  /// **'Purchase Fuel'**
  String get purchaseFuel;

  /// No description provided for @selectGasStation.
  ///
  /// In en, this message translates to:
  /// **'Select a gas station'**
  String get selectGasStation;

  /// No description provided for @litersToPurchased.
  ///
  /// In en, this message translates to:
  /// **'Liters to Purchased'**
  String get litersToPurchased;

  /// No description provided for @purchase.
  ///
  /// In en, this message translates to:
  /// **'Purchase'**
  String get purchase;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCode;

  /// No description provided for @paymentMode.
  ///
  /// In en, this message translates to:
  /// **'Payment Mode'**
  String get paymentMode;

  /// No description provided for @physicalCashOrCard.
  ///
  /// In en, this message translates to:
  /// **'Physical (Cash or Credit Card)'**
  String get physicalCashOrCard;

  /// No description provided for @useWithFuelbackQr.
  ///
  /// In en, this message translates to:
  /// **'Use with fuelback QR Code'**
  String get useWithFuelbackQr;

  /// No description provided for @lankaQr.
  ///
  /// In en, this message translates to:
  /// **'Lanka QR'**
  String get lankaQr;

  /// No description provided for @refueling.
  ///
  /// In en, this message translates to:
  /// **'Refueling'**
  String get refueling;

  /// No description provided for @myQrCode.
  ///
  /// In en, this message translates to:
  /// **'My QR Code'**
  String get myQrCode;

  /// No description provided for @showToAttendant.
  ///
  /// In en, this message translates to:
  /// **'Show to the gas station attendant'**
  String get showToAttendant;

  /// No description provided for @redeemableBalance.
  ///
  /// In en, this message translates to:
  /// **'Redeemable Balance'**
  String get redeemableBalance;

  /// No description provided for @redeemFuelz.
  ///
  /// In en, this message translates to:
  /// **'Redeem Fuelz'**
  String get redeemFuelz;

  /// No description provided for @toRedeemFuelz.
  ///
  /// In en, this message translates to:
  /// **'To redeem Fuelz, your account must have a minimum of 5 transactions.'**
  String get toRedeemFuelz;

  /// No description provided for @cashCard.
  ///
  /// In en, this message translates to:
  /// **'Cash / Card'**
  String get cashCard;

  /// No description provided for @viaFuelbackQr.
  ///
  /// In en, this message translates to:
  /// **'via Fuelback QR'**
  String get viaFuelbackQr;

  /// No description provided for @selfCheckIn.
  ///
  /// In en, this message translates to:
  /// **'Self Check-In'**
  String get selfCheckIn;

  /// No description provided for @testDalana.
  ///
  /// In en, this message translates to:
  /// **'Test - Dalana'**
  String get testDalana;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @shops.
  ///
  /// In en, this message translates to:
  /// **'Shops'**
  String get shops;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @getDirection.
  ///
  /// In en, this message translates to:
  /// **'Get Direction'**
  String get getDirection;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @youHaveSavedSince.
  ///
  /// In en, this message translates to:
  /// **'You have saved since {date}'**
  String youHaveSavedSince(Object date);

  /// No description provided for @recentConsumption.
  ///
  /// In en, this message translates to:
  /// **'Recent consumption'**
  String get recentConsumption;

  /// No description provided for @inviteFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite friends to FuelBack'**
  String get inviteFriends;

  /// No description provided for @getFuelzWhen.
  ///
  /// In en, this message translates to:
  /// **'You get 50 Fuelz when your friends makes their first purchase.'**
  String get getFuelzWhen;

  /// No description provided for @findOutMore.
  ///
  /// In en, this message translates to:
  /// **'Find out more'**
  String get findOutMore;

  /// No description provided for @addPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Add Promo Code'**
  String get addPromoCode;

  /// No description provided for @paymentSettings.
  ///
  /// In en, this message translates to:
  /// **'Payment Settings'**
  String get paymentSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @myProjects.
  ///
  /// In en, this message translates to:
  /// **'My projects'**
  String get myProjects;

  /// No description provided for @plantTrees.
  ///
  /// In en, this message translates to:
  /// **'Plant {count} trees'**
  String plantTrees(Object count);

  /// No description provided for @joinGreenInitiative.
  ///
  /// In en, this message translates to:
  /// **'Join our green initiative to transform Sri Lanka\'s landscape...'**
  String get joinGreenInitiative;

  /// No description provided for @fundsCollected.
  ///
  /// In en, this message translates to:
  /// **'Funds collected'**
  String get fundsCollected;

  /// No description provided for @fuelzLiters.
  ///
  /// In en, this message translates to:
  /// **'Fuelz liters'**
  String get fuelzLiters;

  /// No description provided for @myBadges.
  ///
  /// In en, this message translates to:
  /// **'My badges'**
  String get myBadges;

  /// No description provided for @accountInformation.
  ///
  /// In en, this message translates to:
  /// **'Account Information'**
  String get accountInformation;

  /// No description provided for @updateEmail.
  ///
  /// In en, this message translates to:
  /// **'Update Email'**
  String get updateEmail;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @deleteMyAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete my account'**
  String get deleteMyAccount;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @autoRedeemFuelz.
  ///
  /// In en, this message translates to:
  /// **'Auto-Redeem Fuelz'**
  String get autoRedeemFuelz;

  /// No description provided for @supportCenter.
  ///
  /// In en, this message translates to:
  /// **'Support center'**
  String get supportCenter;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @enableAutoRedeem.
  ///
  /// In en, this message translates to:
  /// **'Enable to automatically redeem Fuelz when refueling.'**
  String get enableAutoRedeem;

  /// No description provided for @needHelp.
  ///
  /// In en, this message translates to:
  /// **'Need help?'**
  String get needHelp;

  /// No description provided for @supportAvailable.
  ///
  /// In en, this message translates to:
  /// **'If you have any issues or questions, reach out anytime. Our support is available 24/7 by phone or email at {email}, with email responses within 48 to 72 hours.'**
  String supportAvailable(Object email);

  /// No description provided for @callSupport.
  ///
  /// In en, this message translates to:
  /// **'Call Support'**
  String get callSupport;

  /// No description provided for @sendEmail.
  ///
  /// In en, this message translates to:
  /// **'Send Email'**
  String get sendEmail;

  /// No description provided for @appNameFuelback.
  ///
  /// In en, this message translates to:
  /// **'Name of the app: FuelBack App'**
  String get appNameFuelback;

  /// No description provided for @launchedIn.
  ///
  /// In en, this message translates to:
  /// **'Launched in: {year}'**
  String launchedIn(Object year);

  /// No description provided for @ourMission.
  ///
  /// In en, this message translates to:
  /// **'Our mission'**
  String get ourMission;

  /// No description provided for @missionText.
  ///
  /// In en, this message translates to:
  /// **'In a world where every detail counts towards shaping our collective destiny, our vision of society thrives on sustainable prosperity. Our vision is a future where communities are empowered to build better days, not just for today, but for generations to come. Through the collective effort of individuals acting with foresight and responsibility, we see a horizon where every small step taken today crafts a legacy of well-being, harmony, and abundance. This is a future where the mindful cultivation of our surroundings and attention to life\'s nuances unlock unparalleled possibilities for growth and happiness.'**
  String get missionText;

  /// No description provided for @ourVision.
  ///
  /// In en, this message translates to:
  /// **'Our vision'**
  String get ourVision;

  /// No description provided for @visionText.
  ///
  /// In en, this message translates to:
  /// **'Our mission is to be the catalyst for this transformative journey. By nurturing saving habits and instilling a deep appreciation for the finer details of daily life, we set the stage for profound and lasting improvement in every way of life. We commit to:'**
  String get visionText;

  /// No description provided for @inspiringAction.
  ///
  /// In en, this message translates to:
  /// **'Inspiring Action for a Better Tomorrow:'**
  String get inspiringAction;

  /// No description provided for @inspiringActionText.
  ///
  /// In en, this message translates to:
  /// **'Facilitating and encouraging actions that not only serve our immediate needs but also contribute to the long-term vibrancy and health of our communities.'**
  String get inspiringActionText;

  /// No description provided for @fosteringEngagement.
  ///
  /// In en, this message translates to:
  /// **'Fostering Collective Engagement:'**
  String get fosteringEngagement;

  /// No description provided for @fosteringEngagementText.
  ///
  /// In en, this message translates to:
  /// **'Uniting individuals, communities, and partners in a shared mission to generate positive change, reinforcing the belief that together, we can achieve more than we can achieve alone.'**
  String get fosteringEngagementText;

  /// No description provided for @promotingProsperity.
  ///
  /// In en, this message translates to:
  /// **'Promoting Sustainable Prosperity:'**
  String get promotingProsperity;

  /// No description provided for @promotingProsperityText.
  ///
  /// In en, this message translates to:
  /// **'Championing practices and initiatives that ensure our collective efforts lead to a sustainable and prosperous future for all.'**
  String get promotingProsperityText;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @referrals.
  ///
  /// In en, this message translates to:
  /// **'Referrals'**
  String get referrals;

  /// No description provided for @giveGiftOfFuelz.
  ///
  /// In en, this message translates to:
  /// **'Give the gift of Fuelz to friends'**
  String get giveGiftOfFuelz;

  /// No description provided for @bothGetPromo.
  ///
  /// In en, this message translates to:
  /// **'You both get a promo when your friend makes their first order.'**
  String get bothGetPromo;

  /// No description provided for @youGetOff.
  ///
  /// In en, this message translates to:
  /// **'You get off'**
  String get youGetOff;

  /// No description provided for @theyGetOff.
  ///
  /// In en, this message translates to:
  /// **'They get off'**
  String get theyGetOff;

  /// No description provided for @lkrFuelz.
  ///
  /// In en, this message translates to:
  /// **'LKR {amount} ({fuelz} Fuelz) when your friend make their first purchase.'**
  String lkrFuelz(Object amount, Object fuelz);

  /// No description provided for @forFirstOrder.
  ///
  /// In en, this message translates to:
  /// **'For the First order LKR {amount} ({fuelz} Fuelz)'**
  String forFirstOrder(Object amount, Object fuelz);

  /// No description provided for @sharePromoCode.
  ///
  /// In en, this message translates to:
  /// **'Share your promo code to receive fuelz'**
  String get sharePromoCode;

  /// No description provided for @invitedFriends.
  ///
  /// In en, this message translates to:
  /// **'Invited friends'**
  String get invitedFriends;

  /// No description provided for @activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get activate;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get noNotifications;

  /// No description provided for @futureNotifications.
  ///
  /// In en, this message translates to:
  /// **'Your future notifications will appear here.'**
  String get futureNotifications;

  /// No description provided for @youReceived.
  ///
  /// In en, this message translates to:
  /// **'You received {amount} Fuelz'**
  String youReceived(Object amount);

  /// No description provided for @youFilledUp.
  ///
  /// In en, this message translates to:
  /// **'You filled up your car at the station {station}...'**
  String youFilledUp(Object station);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @takePicture.
  ///
  /// In en, this message translates to:
  /// **'Take a picture'**
  String get takePicture;

  /// No description provided for @choosePicture.
  ///
  /// In en, this message translates to:
  /// **'Choose a picture'**
  String get choosePicture;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @continueTitle.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueTitle;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get less;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showLess;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// No description provided for @collapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse'**
  String get collapse;

  /// No description provided for @expand.
  ///
  /// In en, this message translates to:
  /// **'Expand'**
  String get expand;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @now.
  ///
  /// In en, this message translates to:
  /// **'Now'**
  String get now;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @soon.
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get soon;

  /// No description provided for @never.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// No description provided for @always.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get always;

  /// No description provided for @sometimes.
  ///
  /// In en, this message translates to:
  /// **'Sometimes'**
  String get sometimes;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// No description provided for @euro3.
  ///
  /// In en, this message translates to:
  /// **'Euro 3'**
  String get euro3;

  /// No description provided for @autoDiesel.
  ///
  /// In en, this message translates to:
  /// **'Auto Diesel'**
  String get autoDiesel;

  /// No description provided for @superDiesel.
  ///
  /// In en, this message translates to:
  /// **'Super Diesel'**
  String get superDiesel;

  /// No description provided for @petrol95.
  ///
  /// In en, this message translates to:
  /// **'Petrol 95'**
  String get petrol95;

  /// No description provided for @petrol92.
  ///
  /// In en, this message translates to:
  /// **'Petrol 92'**
  String get petrol92;

  /// No description provided for @extraMile.
  ///
  /// In en, this message translates to:
  /// **'Extra Mile'**
  String get extraMile;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'cy',
    'en',
    'ru',
    'si',
    'ta',
    'tg',
    'ur',
    'uz',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'cy':
      return AppLocalizationsCy();
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'ta':
      return AppLocalizationsTa();
    case 'tg':
      return AppLocalizationsTg();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
