// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appName => 'FuelBack';

  @override
  String get phoneVerification => 'දුරකථන සත්‍යාපනය';

  @override
  String get enterSixDigitCode =>
      'SMS මගින් යවන ලද ඉලක්කම් 6ක කේතය ඇතුළත් කරන්න';

  @override
  String get didntReceiveCode => 'කේතය ලැබුණේ නැද්ද?';

  @override
  String get resendCode => 'කේතය නැවත යවන්න';

  @override
  String get verify => 'සත්‍යාපනය කරන්න';

  @override
  String get signIn => 'පුරන්න';

  @override
  String get signUp => 'ලියාපදිංචි වන්න';

  @override
  String get phoneNumber => 'දුරකථන අංකය';

  @override
  String get pleaseProvideInfo => 'කරුණාකර පහත තොරතුරු සපයන්න';

  @override
  String get firstName => 'මුල් නම';

  @override
  String get email => 'විද්‍යුත් තැපෑල';

  @override
  String get emailOptional => 'විද්‍යුත් තැපෑල (විකල්ප)';

  @override
  String get referralCode => 'යොමු කේතය';

  @override
  String get referralCodeOptional => 'යොමු කේතය (විකල්ප)';

  @override
  String get vehicleType => 'වාහන වර්ගය';

  @override
  String get next => 'ඊළඟ';

  @override
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions) {
    return 'ඉදිරියට යාමෙන්, ඔබ අපගේ $privacyPolicy සහ අපගේ $termsAndConditions සමඟ එකඟ වේ';
  }

  @override
  String get privacyPolicy => 'පෞද්ගලිකත්ව ප්‍රතිපත්තිය';

  @override
  String get termsAndConditions => 'කොන්දේසි සහ නියම';

  @override
  String hello(Object name) {
    return 'හෙලෝ, $name';
  }

  @override
  String get fuelUp => 'ඉන්ධන පිරවීම';

  @override
  String get transfer => 'මාරු කිරීම';

  @override
  String get payBill => 'බිල් ගෙවීම';

  @override
  String get accounts => 'ගිණුම්';

  @override
  String get sendFuelz => 'Fuelz යවන්න';

  @override
  String lkrToShare(Object amount) {
    return 'LKR $amount to share';
  }

  @override
  String get socialPortal => 'සමාජ පෝර්ටලය';

  @override
  String get myFuelzBalance => 'මගේ Fuelz ශේෂය';

  @override
  String get pending => 'පොරොත්තුවෙන්';

  @override
  String get totalAvailable => 'මුළු ලබා ගත හැකි';

  @override
  String get usable => 'භාවිතා කළ හැකි';

  @override
  String get convertFuelz => 'Fuelz පරිවර්තනය';

  @override
  String get purchaseHistory => 'මිලදී ගැනීමේ ඉතිහාසය';

  @override
  String get carWash => 'කාර් වොෂ්';

  @override
  String get fuelType => 'ඉන්ධන වර්ගය';

  @override
  String get priceTracking => 'මිල නිරීක්ෂණය';

  @override
  String get recommendedForYou => 'ඔබ සඳහා නිර්දේශිත';

  @override
  String get viewOnMap => 'සිතියමේ බලන්න';

  @override
  String getUpToGift(Object amount) {
    return '$amount L දක්වා තෑග්ගක් ලබා ගන්න';
  }

  @override
  String get inviteFriendsToFuelBack => 'මිතුරන් FuelBack වෙත ආරාධනා කරන්න';

  @override
  String get shareInvite => 'ආරාධනා බෙදා ගන්න';

  @override
  String youPayGivesBack(Object company) {
    return 'ඔබ ගෙවයි. $company ආපසු දෙයි.';
  }

  @override
  String get evenForBoringStuff => 'කම්මැලි දේවල් සඳහා පවා.';

  @override
  String get wallet => 'පසුම්බිය';

  @override
  String get myBalances => 'මගේ ශේෂයන්';

  @override
  String get litersBalance => 'ලීටර් ශේෂය';

  @override
  String get gas => 'ගෑස්';

  @override
  String get add => 'එකතු කරන්න';

  @override
  String get changeFuelzToGreen =>
      'Fuelz Green Fuelz බවට වෙනස් කර හරිත ව්‍යාපෘතිවල සහභාගී වන්න';

  @override
  String get uploadReceipt => 'රිසිට් උඩුගත කරන්න';

  @override
  String get completed => 'සම්පූර්ණයි';

  @override
  String get receipt => 'රිසිට්';

  @override
  String get total => 'එකතුව';

  @override
  String get initialAmount => 'ආරම්භක මුදල';

  @override
  String get spendFuelz => 'Fuelz වියදම් කරන්න';

  @override
  String get collectedFuelz => 'එකතු කළ Fuelz';

  @override
  String get details => 'විස්තර';

  @override
  String get receivedFuelz => 'ලැබුණු Fuelz';

  @override
  String get liters => 'ලීටර්';

  @override
  String get paymentMethod => 'ගෙවීමේ ක්‍රමය';

  @override
  String get proofOfTransaction => 'ගනුදෙනු සාධකය';

  @override
  String get viewReceipt => 'රිසිට් බලන්න';

  @override
  String get bankAccounts => 'බැංකු ගිණුම්';

  @override
  String get noBankAccountYet => 'ඔබට තවම බැංකු ගිණුමක් නැත';

  @override
  String get futureBankAccounts => 'ඔබගේ අනාගත බැංකු ගිණුම් මෙහි දිස් වනු ඇත.';

  @override
  String get connectNewBankAccount => 'නව බැංකු ගිණුම සම්බන්ධ කරන්න';

  @override
  String get newBankAccount => 'නව බැංකු ගිණුම';

  @override
  String get bank => 'බැංකුව';

  @override
  String get chooseYourBank => 'ඔබගේ බැංකුව තෝරන්න';

  @override
  String get accountNumber => 'ගිණුම් අංකය';

  @override
  String get nationalIdCardNumber => 'ජාතික හැඳුනුම්පත් අංකය';

  @override
  String get setYourTransactionPin => 'ඔබගේ ගනුදෙනු PIN අංකය සකසන්න';

  @override
  String get securePaymentsBy =>
      'ඉලක්කම් 4ක PIN අංකයක් නිර්මාණය කිරීමෙන් ඔබගේ ගෙවීම් සුරක්ෂිත කරන්න. මෙම PIN අංකය සියලුම ගනුදෙනු සඳහා අවශ්‍ය වේ.';

  @override
  String get bankAccountNumber => 'බැංකු ගිණුම් අංකය';

  @override
  String get payment => 'ගෙවීම';

  @override
  String get paymentCompleted => 'ගෙවීම සම්පූර්ණයි';

  @override
  String get paymentFailed => 'ගෙවීම අසාර්ථකයි';

  @override
  String get thankYouForPurchase => 'ඔබගේ මිලදී ගැනීම සඳහා ස්තූතියි';

  @override
  String get backHome => 'නිවසට';

  @override
  String get tryAgain => 'නැවත උත්සාහ කරන්න';

  @override
  String get pleaseTryAgain => 'කරුණාකර නැවත උත්සාහ කරන්න';

  @override
  String get paymentProcessUnderway => 'ගෙවීමේ ක්‍රියාවලිය සිදුවෙමින් පවතී';

  @override
  String get enterPinCode => 'PIN කේතය ඇතුළත් කරන්න';

  @override
  String get enterTransactionPin => 'ගනුදෙනු PIN අංකය ඇතුළත් කරන්න';

  @override
  String get toConfirmPayment =>
      'ගෙවීම තහවුරු කිරීමට, කරුණාකර ඔබගේ PIN කේතය ඇතුළත් කරන්න';

  @override
  String get toConfirmPaymentTransaction =>
      'ගෙවීම තහවුරු කිරීමට, කරුණාකර ඔබගේ ගනුදෙනු PIN අංකය ඇතුළත් කරන්න';

  @override
  String get forgotPinCode => 'PIN කේතය අමතක වුණාද?';

  @override
  String get forgotTransactionPin => 'ගනුදෙනු PIN අංකය අමතක වුණාද?';

  @override
  String get pinCodeIncorrect =>
      'ඇතුළත් කළ PIN කේතය වැරදියි. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get amount => 'මුදල';

  @override
  String get fuelback => 'Fuelback';

  @override
  String get fuelbackUsed => 'භාවිතා කළ Fuelback';

  @override
  String get creditCard => 'ක්‍රෙඩිට් කාඩ්';

  @override
  String get change => 'වෙනස් කරන්න';

  @override
  String get pay => 'ගෙවන්න';

  @override
  String get sendReceiptByEmail => 'විද්‍යුත් තැපෑල මගින් රිසිට් යවන්නද?';

  @override
  String get tips => 'ටිප්ස්';

  @override
  String get tipsAmount => 'ටිප්ස් මුදල';

  @override
  String get noTip => 'ටිප් නැත';

  @override
  String get leaveATip => 'ටිප් එකක් තියන්නද?';

  @override
  String get thankEmployeeByTip =>
      'ඔබට ටිප් එකක් තැබීමෙන් සේවකයාට ස්තූති කළ හැකිය';

  @override
  String get paymentMethodAdded => 'නව ගෙවීමේ ක්‍රමයක් සාර්ථකව එකතු කර ඇත';

  @override
  String get backToPaymentSelection => 'ගෙවීම් තේරීමට ආපසු';

  @override
  String get newTitle => 'නව';

  @override
  String get montant => 'ප්‍රමාණය';

  @override
  String get purchaseFuel => 'ඉන්ධන මිලදී ගන්න';

  @override
  String get selectGasStation => 'ගෑස් මධ්‍යස්ථානය තෝරන්න';

  @override
  String get litersToPurchased => 'මිලදී ගැනීමට ලීටර්';

  @override
  String get purchase => 'මිලදී ගැනීම';

  @override
  String get scanQrCode => 'QR කේතය ස්කෑන් කරන්න';

  @override
  String get paymentMode => 'ගෙවීමේ ක්‍රමය';

  @override
  String get physicalCashOrCard => 'භෞතික (මුදල් හෝ ක්‍රෙඩිට් කාඩ්)';

  @override
  String get useWithFuelbackQr => 'Fuelback QR කේතය සමඟ භාවිතා කරන්න';

  @override
  String get lankaQr => 'Lanka QR';

  @override
  String get refueling => 'ඉන්ධන පිරවීම';

  @override
  String get myQrCode => 'මගේ QR කේතය';

  @override
  String get showToAttendant => 'ගෑස් මධ්‍යස්ථාන සේවකයාට පෙන්වන්න';

  @override
  String get redeemableBalance => 'මුදවා ගත හැකි ශේෂය';

  @override
  String get redeemFuelz => 'Fuelz මුදවා ගන්න';

  @override
  String get toRedeemFuelz =>
      'Fuelz මුදවා ගැනීමට, ඔබගේ ගිණුමට අවම වශයෙන් ගනුදෙනු 5ක් තිබිය යුතුය.';

  @override
  String get cashCard => 'මුදල් / කාඩ්';

  @override
  String get viaFuelbackQr => 'Fuelback QR හරහා';

  @override
  String get selfCheckIn => 'ස්වයං ලියාපදිංචිය';

  @override
  String get testDalana => 'පරීක්ෂණ - දලන';

  @override
  String get map => 'සිතියම';

  @override
  String get search => 'සොයන්න';

  @override
  String get shops => 'වෙළඳසැල්';

  @override
  String get services => 'සේවා';

  @override
  String get getDirection => 'දිශාව ලබා ගන්න';

  @override
  String get profile => 'පැතිකඩ';

  @override
  String youHaveSavedSince(Object date) {
    return 'ඔබ $date සිට ඉතිරි කර ඇත';
  }

  @override
  String get recentConsumption => 'මෑත පරිභෝජනය';

  @override
  String get inviteFriends => 'මිතුරන් FuelBack වෙත ආරාධනා කරන්න';

  @override
  String get getFuelzWhen =>
      'ඔබගේ මිතුරන් ඔවුන්ගේ පළමු මිලදී ගැනීම කරන විට ඔබට Fuelz 50ක් ලැබේ.';

  @override
  String get findOutMore => 'තවත් දැනගන්න';

  @override
  String get addPromoCode => 'ප්‍රවර්ධන කේතය එකතු කරන්න';

  @override
  String get paymentSettings => 'ගෙවීම් සැකසුම්';

  @override
  String get settings => 'සැකසුම්';

  @override
  String get myProjects => 'මගේ ව්‍යාපෘති';

  @override
  String plantTrees(Object count) {
    return 'ගස් $countක් සිටුවන්න';
  }

  @override
  String get joinGreenInitiative =>
      'ශ්‍රී ලංකාවේ භූ දර්ශනය පරිවර්තනය කිරීමට අපගේ හරිත මුලපිරීමට එකතු වන්න...';

  @override
  String get fundsCollected => 'එකතු කළ අරමුදල්';

  @override
  String get fuelzLiters => 'Fuelz ලීටර්';

  @override
  String get myBadges => 'මගේ ලාංඡන';

  @override
  String get accountInformation => 'ගිණුම් තොරතුරු';

  @override
  String get updateEmail => 'විද්‍යුත් තැපෑල යාවත්කාලීන කරන්න';

  @override
  String get language => 'භාෂාව';

  @override
  String get english => 'ඉංග්‍රීසි';

  @override
  String get logOut => 'පිටවන්න';

  @override
  String get deleteMyAccount => 'මගේ ගිණුම මකන්න';

  @override
  String get account => 'ගිණුම';

  @override
  String get autoRedeemFuelz => 'ස්වයංක්‍රීය Fuelz මුදවීම';

  @override
  String get supportCenter => 'සහාය මධ්‍යස්ථානය';

  @override
  String get aboutUs => 'අප ගැන';

  @override
  String get disabled => 'අක්‍රීයයි';

  @override
  String get enableAutoRedeem =>
      'ඉන්ධන පිරවීමේදී ස්වයංක්‍රීයව Fuelz මුදවා ගැනීමට සක්‍රීය කරන්න.';

  @override
  String get needHelp => 'උදව් අවශ්‍යද?';

  @override
  String supportAvailable(Object email) {
    return 'ඔබට කිසියම් ගැටලුවක් හෝ ප්‍රශ්න තිබේ නම්, ඕනෑම වේලාවක සම්බන්ධ වන්න. අපගේ සහාය 24/7 දුරකථන හෝ විද්‍යුත් තැපෑල $email හරහා ලබා ගත හැක, විද්‍යුත් තැපැල් පිළිතුරු පැය 48 සිට 72 තුළ.';
  }

  @override
  String get callSupport => 'සහායට අමතන්න';

  @override
  String get sendEmail => 'විද්‍යුත් තැපෑල යවන්න';

  @override
  String get appNameFuelback => 'යෙදුමේ නම: FuelBack App';

  @override
  String launchedIn(Object year) {
    return 'දියත් කළේ: $year';
  }

  @override
  String get ourMission => 'අපගේ මෙහෙවර';

  @override
  String get missionText =>
      'අපගේ සාමූහික ඉරණම සැකසීම සඳහා සෑම විස්තරයක්ම වැදගත් වන ලෝකයක, සමාජය පිළිබඳ අපගේ දැක්ම තිරසාර සමෘද්ධිය මත වර්ධනය වේ. අපගේ දැක්ම වන්නේ ප්‍රජාවන් අද දිනට පමණක් නොව, ඉදිරි පරම්පරාවන් සඳහාද වඩා හොඳ දින ගොඩනැගීමට බලගැන්වූ අනාගතයකි. දුරදක්නා නුවණින් හා වගකීමෙන් කටයුතු කරන පුද්ගලයින්ගේ සාමූහික උත්සාහය තුළින්, අද ගන්නා සෑම කුඩා පියවරක්ම යහපැවැත්ම, සුසංයෝගය සහ සමෘද්ධියේ උරුමයක් නිර්මාණය කරන ක්ෂිතිජයක් අපි දකිමු. මෙය අපගේ වටපිටාව දැනුවත්ව වගා කිරීම සහ ජීවිතයේ සියුම් කරුණු කෙරෙහි අවධානය යොමු කිරීම වර්ධනය සහ සතුට සඳහා අසමසම අවස්ථා විවර කරන අනාගතයකි.';

  @override
  String get ourVision => 'අපගේ දැක්ම';

  @override
  String get visionText =>
      'අපගේ මෙහෙවර වන්නේ මෙම පරිවර්තනීය ගමනේ උත්ප්‍රේරකය වීමයි. ඉතිරි කිරීමේ පුරුදු පෝෂණය කිරීමෙන් සහ දෛනික ජීවිතයේ සියුම් විස්තර සඳහා ගැඹුරු අගයක් ඇති කිරීමෙන්, අපි ජීවිතයේ සෑම මාර්ගයකම ගැඹුරු හා දිගුකාලීන වැඩිදියුණු කිරීමක් සඳහා වේදිකාව සකසමු. අපි කැපවී සිටිමු:';

  @override
  String get inspiringAction => 'වඩා හොඳ හෙටක් සඳහා ක්‍රියාවට පොළඹවීම:';

  @override
  String get inspiringActionText =>
      'අපගේ ක්ෂණික අවශ්‍යතා සපුරාලීමට පමණක් නොව අපගේ ප්‍රජාවන්ගේ දිගුකාලීන ජීවමානභාවය සහ සෞඛ්‍යයට දායක වන ක්‍රියාවන් පහසු කිරීම සහ දිරිගැන්වීම.';

  @override
  String get fosteringEngagement => 'සාමූහික නියැලීම පෝෂණය කිරීම:';

  @override
  String get fosteringEngagementText =>
      'ධනාත්මක වෙනසක් ඇති කිරීමේ හවුල් මෙහෙවරක පුද්ගලයින්, ප්‍රජාවන් සහ හවුල්කරුවන් එක්සත් කිරීම, එකට අපට තනිව ලබා ගත හැකි ප්‍රමාණයට වඩා වැඩි යමක් සාක්ෂාත් කර ගත හැකි බවට විශ්වාසය ශක්තිමත් කිරීම.';

  @override
  String get promotingProsperity => 'තිරසාර සමෘද්ධිය ප්‍රවර්ධනය කිරීම:';

  @override
  String get promotingProsperityText =>
      'අපගේ සාමූහික උත්සාහයන් සියල්ලන්ටම තිරසාර හා සමෘද්ධිමත් අනාගතයකට මග පාදන බව සහතික කරන භාවිතයන් සහ මුලපිරීම් වෙනුවෙන් පෙනී සිටීම.';

  @override
  String get contactUs => 'අප අමතන්න';

  @override
  String get referrals => 'යොමු කිරීම්';

  @override
  String get giveGiftOfFuelz => 'මිතුරන්ට Fuelz තෑගි දෙන්න';

  @override
  String get bothGetPromo =>
      'ඔබගේ මිතුරා ඔවුන්ගේ පළමු ඇණවුම කරන විට ඔබ දෙදෙනාම ප්‍රවර්ධනයක් ලබා ගනී.';

  @override
  String get youGetOff => 'ඔබට වට්ටමක් ලැබේ';

  @override
  String get theyGetOff => 'ඔවුන්ට වට්ටමක් ලැබේ';

  @override
  String lkrFuelz(Object amount, Object fuelz) {
    return 'ඔබගේ මිතුරා පළමු මිලදී ගැනීම කරන විට LKR $amount ($fuelz Fuelz).';
  }

  @override
  String forFirstOrder(Object amount, Object fuelz) {
    return 'පළමු ඇණවුම සඳහා LKR $amount ($fuelz Fuelz)';
  }

  @override
  String get sharePromoCode => 'fuelz ලබා ගැනීමට ඔබගේ ප්‍රවර්ධන කේතය බෙදා ගන්න';

  @override
  String get invitedFriends => 'ආරාධනා කළ මිතුරන්';

  @override
  String get activate => 'සක්‍රිය කරන්න';

  @override
  String get notifications => 'දැනුම්දීම්';

  @override
  String get noNotifications => 'දැනුම්දීම් නැත';

  @override
  String get futureNotifications => 'ඔබගේ අනාගත දැනුම්දීම් මෙහි දිස් වනු ඇත.';

  @override
  String youReceived(Object amount) {
    return 'ඔබට Fuelz $amountක් ලැබුණි';
  }

  @override
  String youFilledUp(Object station) {
    return 'ඔබ ඔබගේ මෝටර් රථය $station මධ්‍යස්ථානයේ පුරවා ගත්තා...';
  }

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get takePicture => 'පින්තූරයක් ගන්න';

  @override
  String get choosePicture => 'පින්තූරයක් තෝරන්න';

  @override
  String get delete => 'මකන්න';

  @override
  String get save => 'සුරකින්න';

  @override
  String get confirm => 'තහවුරු කරන්න';

  @override
  String get loading => 'පූරණය වෙමින්...';

  @override
  String get error => 'දෝෂය';

  @override
  String get success => 'සාර්ථකයි';

  @override
  String get warning => 'අනතුරු ඇඟවීම';

  @override
  String get info => 'තොරතුරු';

  @override
  String get yes => 'ඔව්';

  @override
  String get no => 'නැත';

  @override
  String get ok => 'හරි';

  @override
  String get close => 'වසන්න';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get submit => 'ඉදිරිපත් කරන්න';

  @override
  String get done => 'අවසන්';

  @override
  String get skip => 'මඟ හරින්න';

  @override
  String get continueTitle => 'ඉදිරියට';

  @override
  String get back => 'ආපසු';

  @override
  String get edit => 'සංස්කරණය';

  @override
  String get update => 'යාවත්කාලීන කරන්න';

  @override
  String get remove => 'ඉවත් කරන්න';

  @override
  String get share => 'බෙදා ගන්න';

  @override
  String get copy => 'පිටපත් කරන්න';

  @override
  String get paste => 'අලවන්න';

  @override
  String get selectAll => 'සියල්ල තෝරන්න';

  @override
  String get clear => 'හිස් කරන්න';

  @override
  String get reset => 'නැවත සකසන්න';

  @override
  String get refresh => 'නැවුම් කරන්න';

  @override
  String get more => 'තවත්';

  @override
  String get less => 'අඩු';

  @override
  String get showMore => 'තවත් පෙන්වන්න';

  @override
  String get showLess => 'අඩුවෙන් පෙන්වන්න';

  @override
  String get seeAll => 'සියල්ල බලන්න';

  @override
  String get collapse => 'හකුළන්න';

  @override
  String get expand => 'විහිදන්න';

  @override
  String get today => 'අද';

  @override
  String get yesterday => 'ඊයේ';

  @override
  String get tomorrow => 'හෙට';

  @override
  String get now => 'දැන්';

  @override
  String get later => 'පසුව';

  @override
  String get soon => 'ඉක්මනින්';

  @override
  String get never => 'කවදාවත් නැත';

  @override
  String get always => 'සැමවිටම';

  @override
  String get sometimes => 'සමහර වෙලාවට';

  @override
  String get daily => 'දිනපතා';

  @override
  String get weekly => 'සතිපතා';

  @override
  String get monthly => 'මාසික';

  @override
  String get yearly => 'වාර්ෂික';

  @override
  String get euro3 => 'යුරෝ 3';

  @override
  String get autoDiesel => 'ඔටෝ ඩීසල්';

  @override
  String get superDiesel => 'සුපර් ඩීසල්';

  @override
  String get petrol95 => 'පෙට්‍රල් 95';

  @override
  String get petrol92 => 'පෙට්‍රල් 92';

  @override
  String get extraMile => 'එක්ස්ට්‍රා මයිල්';
}
