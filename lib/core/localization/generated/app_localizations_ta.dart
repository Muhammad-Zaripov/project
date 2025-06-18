// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'FuelBack';

  @override
  String get phoneVerification => 'தொலைபேசி சரிபார்ப்பு';

  @override
  String get enterSixDigitCode =>
      'SMS மூலம் அனுப்பப்பட்ட 6-இலக்க குறியீட்டை உள்ளிடவும்';

  @override
  String get didntReceiveCode => 'குறியீட்டைப் பெறவில்லையா?';

  @override
  String get resendCode => 'குறியீட்டை மீண்டும் அனுப்பு';

  @override
  String get verify => 'சரிபார்க்க';

  @override
  String get signIn => 'உள்நுழை';

  @override
  String get signUp => 'பதிவு செய்';

  @override
  String get phoneNumber => 'தொலைபேசி எண்';

  @override
  String get pleaseProvideInfo => 'பின்வரும் தகவலைத் தயவுசெய்து வழங்கவும்';

  @override
  String get firstName => 'முதல் பெயர்';

  @override
  String get email => 'மின்னஞ்சல்';

  @override
  String get emailOptional => 'மின்னஞ்சல் (விருப்பத்தேர்வு)';

  @override
  String get referralCode => 'பரிந்துரை குறியீடு';

  @override
  String get referralCodeOptional => 'பரிந்துரை குறியீடு (விருப்பத்தேர்வு)';

  @override
  String get vehicleType => 'வாகன வகை';

  @override
  String get next => 'அடுத்து';

  @override
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions) {
    return 'தொடர்வதன் மூலம், நீங்கள் எங்கள் $privacyPolicy மற்றும் எங்கள் $termsAndConditions ஐ ஏற்றுக்கொள்கிறீர்கள்';
  }

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get termsAndConditions => 'விதிமுறைகள் மற்றும் நிபந்தனைகள்';

  @override
  String hello(Object name) {
    return 'வணக்கம், $name';
  }

  @override
  String get fuelUp => 'எரிபொருள் நிரப்பு';

  @override
  String get transfer => 'பரிமாற்றம்';

  @override
  String get payBill => 'பில் செலுத்து';

  @override
  String get accounts => 'கணக்குகள்';

  @override
  String get sendFuelz => 'Fuelz அனுப்பு';

  @override
  String lkrToShare(Object amount) {
    return 'LKR $amount to share';
  }

  @override
  String get socialPortal => 'சமூக போர்டல்';

  @override
  String get myFuelzBalance => 'எனது Fuelz இருப்பு';

  @override
  String get pending => 'நிலுவையில்';

  @override
  String get totalAvailable => 'மொத்தம் கிடைக்கும்';

  @override
  String get usable => 'பயன்படுத்தக்கூடியது';

  @override
  String get convertFuelz => 'Fuelz மாற்று';

  @override
  String get purchaseHistory => 'கொள்முதல் வரலாறு';

  @override
  String get carWash => 'கார் கழுவுதல்';

  @override
  String get fuelType => 'எரிபொருள் வகை';

  @override
  String get priceTracking => 'விலை கண்காணிப்பு';

  @override
  String get recommendedForYou => 'உங்களுக்காக பரிந்துரைக்கப்பட்டது';

  @override
  String get viewOnMap => 'வரைபடத்தில் காண்க';

  @override
  String getUpToGift(Object amount) {
    return '$amount L வரை பரிசு பெறுங்கள்';
  }

  @override
  String get inviteFriendsToFuelBack => 'நண்பர்களை FuelBack க்கு அழைக்கவும்';

  @override
  String get shareInvite => 'அழைப்பை பகிர்';

  @override
  String youPayGivesBack(Object company) {
    return 'நீங்கள் செலுத்துகிறீர்கள். $company திருப்பித் தருகிறது.';
  }

  @override
  String get evenForBoringStuff => 'சலிப்பான விஷயங்களுக்கு கூட.';

  @override
  String get wallet => 'பணப்பை';

  @override
  String get myBalances => 'எனது இருப்புகள்';

  @override
  String get litersBalance => 'லிட்டர் இருப்பு';

  @override
  String get gas => 'எரிவாயு';

  @override
  String get add => 'சேர்';

  @override
  String get changeFuelzToGreen =>
      'Fuelz ஐ Green Fuelz ஆக மாற்றி பசுமை திட்டங்களில் பங்கேற்கவும்';

  @override
  String get uploadReceipt => 'ரசீதை பதிவேற்று';

  @override
  String get completed => 'நிறைவு';

  @override
  String get receipt => 'ரசீது';

  @override
  String get total => 'மொத்தம்';

  @override
  String get initialAmount => 'ஆரம்ப தொகை';

  @override
  String get spendFuelz => 'Fuelz செலவிடு';

  @override
  String get collectedFuelz => 'சேகரிக்கப்பட்ட Fuelz';

  @override
  String get details => 'விவரங்கள்';

  @override
  String get receivedFuelz => 'பெறப்பட்ட Fuelz';

  @override
  String get liters => 'லிட்டர்கள்';

  @override
  String get paymentMethod => 'கட்டண முறை';

  @override
  String get proofOfTransaction => 'பரிவர்த்தனை ஆதாரம்';

  @override
  String get viewReceipt => 'ரசீதைக் காண்க';

  @override
  String get bankAccounts => 'வங்கி கணக்குகள்';

  @override
  String get noBankAccountYet => 'உங்களிடம் இன்னும் வங்கி கணக்கு இல்லை';

  @override
  String get futureBankAccounts =>
      'உங்கள் எதிர்கால வங்கி கணக்குகள் இங்கே தோன்றும்.';

  @override
  String get connectNewBankAccount => 'புதிய வங்கி கணக்கை இணைக்கவும்';

  @override
  String get newBankAccount => 'புதிய வங்கி கணக்கு';

  @override
  String get bank => 'வங்கி';

  @override
  String get chooseYourBank => 'உங்கள் வங்கியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get accountNumber => 'கணக்கு எண்';

  @override
  String get nationalIdCardNumber => 'தேசிய அடையாள அட்டை எண்';

  @override
  String get setYourTransactionPin => 'உங்கள் பரிவர்த்தனை PIN ஐ அமைக்கவும்';

  @override
  String get securePaymentsBy =>
      '4-இலக்க PIN ஐ உருவாக்கி உங்கள் கட்டணங்களைப் பாதுகாக்கவும். இந்த PIN அனைத்து பரிவர்த்தனைகளுக்கும் தேவைப்படும்.';

  @override
  String get bankAccountNumber => 'வங்கி கணக்கு எண்';

  @override
  String get payment => 'கட்டணம்';

  @override
  String get paymentCompleted => 'கட்டணம் நிறைவு';

  @override
  String get paymentFailed => 'கட்டணம் தோல்வி';

  @override
  String get thankYouForPurchase => 'உங்கள் கொள்முதலுக்கு நன்றி';

  @override
  String get backHome => 'முகப்புக்கு திரும்பு';

  @override
  String get tryAgain => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get pleaseTryAgain => 'தயவுசெய்து மீண்டும் முயற்சிக்கவும்';

  @override
  String get paymentProcessUnderway => 'கட்டண செயல்முறை நடந்து கொண்டிருக்கிறது';

  @override
  String get enterPinCode => 'PIN குறியீட்டை உள்ளிடவும்';

  @override
  String get enterTransactionPin => 'பரிவர்த்தனை PIN ஐ உள்ளிடவும்';

  @override
  String get toConfirmPayment =>
      'கட்டணத்தை உறுதிப்படுத்த, உங்கள் PIN குறியீட்டை உள்ளிடவும்';

  @override
  String get toConfirmPaymentTransaction =>
      'கட்டணத்தை உறுதிப்படுத்த, உங்கள் பரிவர்த்தனை PIN ஐ உள்ளிடவும்';

  @override
  String get forgotPinCode => 'PIN குறியீட்டை மறந்துவிட்டீர்களா?';

  @override
  String get forgotTransactionPin => 'பரிவர்த்தனை PIN ஐ மறந்துவிட்டீர்களா?';

  @override
  String get pinCodeIncorrect =>
      'உள்ளிடப்பட்ட PIN குறியீடு தவறானது. தயவுசெய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get amount => 'தொகை';

  @override
  String get fuelback => 'Fuelback';

  @override
  String get fuelbackUsed => 'பயன்படுத்தப்பட்ட Fuelback';

  @override
  String get creditCard => 'கடன் அட்டை';

  @override
  String get change => 'மாற்று';

  @override
  String get pay => 'செலுத்து';

  @override
  String get sendReceiptByEmail => 'மின்னஞ்சல் மூலம் ரசீதை அனுப்பவா?';

  @override
  String get tips => 'டிப்ஸ்';

  @override
  String get tipsAmount => 'டிப்ஸ் தொகை';

  @override
  String get noTip => 'டிப் இல்லை';

  @override
  String get leaveATip => 'டிப் விடவா?';

  @override
  String get thankEmployeeByTip =>
      'நீங்கள் டிப் விட்டு ஊழியருக்கு நன்றி சொல்லலாம்';

  @override
  String get paymentMethodAdded =>
      'புதிய கட்டண முறை வெற்றிகரமாக சேர்க்கப்பட்டது';

  @override
  String get backToPaymentSelection => 'கட்டண தேர்வுக்கு திரும்பு';

  @override
  String get newTitle => 'புதிய';

  @override
  String get montant => 'அளவு';

  @override
  String get purchaseFuel => 'எரிபொருள் வாங்கு';

  @override
  String get selectGasStation => 'எரிவாயு நிலையத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get litersToPurchased => 'வாங்குவதற்கு லிட்டர்கள்';

  @override
  String get purchase => 'வாங்கு';

  @override
  String get scanQrCode => 'QR குறியீட்டை ஸ்கேன் செய்யவும்';

  @override
  String get paymentMode => 'கட்டண முறை';

  @override
  String get physicalCashOrCard => 'பௌதீக (பணம் அல்லது கடன் அட்டை)';

  @override
  String get useWithFuelbackQr => 'Fuelback QR குறியீட்டுடன் பயன்படுத்தவும்';

  @override
  String get lankaQr => 'Lanka QR';

  @override
  String get refueling => 'எரிபொருள் நிரப்புதல்';

  @override
  String get myQrCode => 'எனது QR குறியீடு';

  @override
  String get showToAttendant => 'எரிவாயு நிலைய உதவியாளருக்கு காட்டவும்';

  @override
  String get redeemableBalance => 'மீட்கக்கூடிய இருப்பு';

  @override
  String get redeemFuelz => 'Fuelz மீட்டு';

  @override
  String get toRedeemFuelz =>
      'Fuelz மீட்க, உங்கள் கணக்கில் குறைந்தது 5 பரிவர்த்தனைகள் இருக்க வேண்டும்.';

  @override
  String get cashCard => 'பணம் / அட்டை';

  @override
  String get viaFuelbackQr => 'Fuelback QR வழியாக';

  @override
  String get selfCheckIn => 'சுய செக்-இன்';

  @override
  String get testDalana => 'சோதனை - தலானா';

  @override
  String get map => 'வரைபடம்';

  @override
  String get search => 'தேடு';

  @override
  String get shops => 'கடைகள்';

  @override
  String get services => 'சேவைகள்';

  @override
  String get getDirection => 'திசையைப் பெறு';

  @override
  String get profile => 'சுயவிவரம்';

  @override
  String youHaveSavedSince(Object date) {
    return 'நீங்கள் $date முதல் சேமித்துள்ளீர்கள்';
  }

  @override
  String get recentConsumption => 'சமீபத்திய நுகர்வு';

  @override
  String get inviteFriends => 'நண்பர்களை FuelBack க்கு அழைக்கவும்';

  @override
  String get getFuelzWhen =>
      'உங்கள் நண்பர்கள் முதல் கொள்முதல் செய்யும் போது நீங்கள் 50 Fuelz பெறுவீர்கள்.';

  @override
  String get findOutMore => 'மேலும் அறிக';

  @override
  String get addPromoCode => 'ப்ரோமோ குறியீட்டைச் சேர்';

  @override
  String get paymentSettings => 'கட்டண அமைப்புகள்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get myProjects => 'எனது திட்டங்கள்';

  @override
  String plantTrees(Object count) {
    return '$count மரங்களை நடு';
  }

  @override
  String get joinGreenInitiative =>
      'இலங்கையின் நிலப்பரப்பை மாற்றுவதற்கான எங்கள் பசுமை முயற்சியில் சேரவும்...';

  @override
  String get fundsCollected => 'சேகரிக்கப்பட்ட நிதி';

  @override
  String get fuelzLiters => 'Fuelz லிட்டர்கள்';

  @override
  String get myBadges => 'எனது பேட்ஜ்கள்';

  @override
  String get accountInformation => 'கணக்கு தகவல்';

  @override
  String get updateEmail => 'மின்னஞ்சலைப் புதுப்பி';

  @override
  String get language => 'மொழி';

  @override
  String get english => 'ஆங்கிலம்';

  @override
  String get logOut => 'வெளியேறு';

  @override
  String get deleteMyAccount => 'எனது கணக்கை நீக்கு';

  @override
  String get account => 'கணக்கு';

  @override
  String get autoRedeemFuelz => 'தானியங்கி-மீட்பு Fuelz';

  @override
  String get supportCenter => 'ஆதரவு மையம்';

  @override
  String get aboutUs => 'எங்களைப் பற்றி';

  @override
  String get disabled => 'முடக்கப்பட்டது';

  @override
  String get enableAutoRedeem =>
      'எரிபொருள் நிரப்பும் போது தானாகவே Fuelz மீட்க இயக்கவும்.';

  @override
  String get needHelp => 'உதவி தேவையா?';

  @override
  String supportAvailable(Object email) {
    return 'உங்களுக்கு ஏதேனும் சிக்கல்கள் அல்லது கேள்விகள் இருந்தால், எந்த நேரத்திலும் தொடர்பு கொள்ளவும். எங்கள் ஆதரவு 24/7 தொலைபேசி அல்லது மின்னஞ்சல் $email வழியாக கிடைக்கிறது, மின்னஞ்சல் பதில்கள் 48 முதல் 72 மணிநேரத்திற்குள்.';
  }

  @override
  String get callSupport => 'ஆதரவை அழைக்கவும்';

  @override
  String get sendEmail => 'மின்னஞ்சல் அனுப்பு';

  @override
  String get appNameFuelback => 'செயலியின் பெயர்: FuelBack App';

  @override
  String launchedIn(Object year) {
    return 'தொடங்கப்பட்டது: $year';
  }

  @override
  String get ourMission => 'எங்கள் நோக்கம்';

  @override
  String get missionText =>
      'எங்கள் கூட்டு விதியை வடிவமைப்பதில் ஒவ்வொரு விவரமும் முக்கியத்துவம் வாய்ந்த உலகில், சமூகத்தைப் பற்றிய எங்கள் பார்வை நிலையான செழிப்பில் செழிக்கிறது. எங்கள் பார்வை என்பது சமூகங்கள் இன்றைக்கு மட்டுமல்ல, வரும் தலைமுறைகளுக்கும் சிறந்த நாட்களை உருவாக்குவதற்கு அதிகாரம் பெற்ற எதிர்காலமாகும். தூரநோக்கு மற்றும் பொறுப்புடன் செயல்படும் தனிநபர்களின் கூட்டு முயற்சியின் மூலம், இன்று எடுக்கப்படும் ஒவ்வொரு சிறிய அடியும் நல்வாழ்வு, இணக்கம் மற்றும் மிகுதியின் மரபை உருவாக்கும் அடிவானத்தை நாங்கள் காண்கிறோம். இது நமது சுற்றுப்புறங்களை கவனமாக வளர்ப்பது மற்றும் வாழ்க்கையின் நுணுக்கங்களுக்கு கவனம் செலுத்துவது வளர்ச்சி மற்றும் மகிழ்ச்சிக்கான இணையற்ற சாத்தியங்களைத் திறக்கும் எதிர்காலமாகும்.';

  @override
  String get ourVision => 'எங்கள் பார்வை';

  @override
  String get visionText =>
      'இந்த மாற்றும் பயணத்திற்கு வினையூக்கியாக இருப்பதே எங்கள் நோக்கம். சேமிப்பு பழக்கங்களை வளர்ப்பதன் மூலமும், அன்றாட வாழ்க்கையின் நுணுக்கமான விவரங்களுக்கு ஆழமான பாராட்டுதலை ஏற்படுத்துவதன் மூலமும், வாழ்க்கையின் ஒவ்வொரு வழியிலும் ஆழமான மற்றும் நீடித்த முன்னேற்றத்திற்கான மேடையை அமைக்கிறோம். நாங்கள் உறுதியளிக்கிறோம்:';

  @override
  String get inspiringAction => 'சிறந்த நாளைக்கான செயலுக்கு ஊக்கமளித்தல்:';

  @override
  String get inspiringActionText =>
      'நமது உடனடி தேவைகளுக்கு மட்டுமல்ல, நமது சமூகங்களின் நீண்டகால உயிர்ச்சக்தி மற்றும் ஆரோக்கியத்திற்கும் பங்களிக்கும் செயல்களை எளிதாக்குதல் மற்றும் ஊக்குவித்தல்.';

  @override
  String get fosteringEngagement => 'கூட்டு ஈடுபாட்டை வளர்த்தல்:';

  @override
  String get fosteringEngagementText =>
      'நேர்மறையான மாற்றத்தை உருவாக்கும் பகிரப்பட்ட பணியில் தனிநபர்கள், சமூகங்கள் மற்றும் பங்காளிகளை ஒன்றிணைத்தல், ஒன்றாக நாம் தனியாக சாதிக்கக்கூடியதை விட அதிகமாக சாதிக்க முடியும் என்ற நம்பிக்கையை வலுப்படுத்துதல்.';

  @override
  String get promotingProsperity => 'நிலையான செழிப்பை ஊக்குவித்தல்:';

  @override
  String get promotingProsperityText =>
      'நமது கூட்டு முயற்சிகள் அனைவருக்கும் நிலையான மற்றும் செழிப்பான எதிர்காலத்திற்கு வழிவகுக்கும் என்பதை உறுதிசெய்யும் நடைமுறைகள் மற்றும் முயற்சிகளை ஆதரித்தல்.';

  @override
  String get contactUs => 'எங்களை தொடர்பு கொள்ளவும்';

  @override
  String get referrals => 'பரிந்துரைகள்';

  @override
  String get giveGiftOfFuelz => 'நண்பர்களுக்கு Fuelz பரிசளிக்கவும்';

  @override
  String get bothGetPromo =>
      'உங்கள் நண்பர் முதல் ஆர்டரைச் செய்யும்போது நீங்கள் இருவரும் ப்ரோமோ பெறுவீர்கள்.';

  @override
  String get youGetOff => 'நீங்கள் தள்ளுபடி பெறுவீர்கள்';

  @override
  String get theyGetOff => 'அவர்கள் தள்ளுபடி பெறுவார்கள்';

  @override
  String lkrFuelz(Object amount, Object fuelz) {
    return 'உங்கள் நண்பர் முதல் கொள்முதல் செய்யும் போது LKR $amount ($fuelz Fuelz).';
  }

  @override
  String forFirstOrder(Object amount, Object fuelz) {
    return 'முதல் ஆர்டருக்கு LKR $amount ($fuelz Fuelz)';
  }

  @override
  String get sharePromoCode => 'fuelz பெற உங்கள் ப்ரோமோ குறியீட்டைப் பகிரவும்';

  @override
  String get invitedFriends => 'அழைக்கப்பட்ட நண்பர்கள்';

  @override
  String get activate => 'செயல்படுத்து';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get noNotifications => 'அறிவிப்புகள் இல்லை';

  @override
  String get futureNotifications =>
      'உங்கள் எதிர்கால அறிவிப்புகள் இங்கே தோன்றும்.';

  @override
  String youReceived(Object amount) {
    return 'நீங்கள் $amount Fuelz பெற்றீர்கள்';
  }

  @override
  String youFilledUp(Object station) {
    return 'நீங்கள் உங்கள் காரை $station நிலையத்தில் நிரப்பினீர்கள்...';
  }

  @override
  String get cancel => 'ரத்து';

  @override
  String get takePicture => 'படம் எடு';

  @override
  String get choosePicture => 'படத்தைத் தேர்ந்தெடு';

  @override
  String get delete => 'நீக்கு';

  @override
  String get save => 'சேமி';

  @override
  String get confirm => 'உறுதிப்படுத்து';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get error => 'பிழை';

  @override
  String get success => 'வெற்றி';

  @override
  String get warning => 'எச்சரிக்கை';

  @override
  String get info => 'தகவல்';

  @override
  String get yes => 'ஆம்';

  @override
  String get no => 'இல்லை';

  @override
  String get ok => 'சரி';

  @override
  String get close => 'மூடு';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get submit => 'சமர்ப்பி';

  @override
  String get done => 'முடிந்தது';

  @override
  String get skip => 'தவிர்';

  @override
  String get continueTitle => 'தொடர்';

  @override
  String get back => 'பின்';

  @override
  String get edit => 'திருத்து';

  @override
  String get update => 'புதுப்பி';

  @override
  String get remove => 'அகற்று';

  @override
  String get share => 'பகிர்';

  @override
  String get copy => 'நகலெடு';

  @override
  String get paste => 'ஒட்டு';

  @override
  String get selectAll => 'அனைத்தையும் தேர்ந்தெடு';

  @override
  String get clear => 'அழி';

  @override
  String get reset => 'மீட்டமை';

  @override
  String get refresh => 'புதுப்பி';

  @override
  String get more => 'மேலும்';

  @override
  String get less => 'குறைவு';

  @override
  String get showMore => 'மேலும் காட்டு';

  @override
  String get showLess => 'குறைவாக காட்டு';

  @override
  String get seeAll => 'அனைத்தையும் பார்';

  @override
  String get collapse => 'சுருக்கு';

  @override
  String get expand => 'விரிவாக்கு';

  @override
  String get today => 'இன்று';

  @override
  String get yesterday => 'நேற்று';

  @override
  String get tomorrow => 'நாளை';

  @override
  String get now => 'இப்போது';

  @override
  String get later => 'பின்னர்';

  @override
  String get soon => 'விரைவில்';

  @override
  String get never => 'ஒருபோதும்';

  @override
  String get always => 'எப்போதும்';

  @override
  String get sometimes => 'சில நேரங்களில்';

  @override
  String get daily => 'தினசரி';

  @override
  String get weekly => 'வாராந்திர';

  @override
  String get monthly => 'மாதாந்திர';

  @override
  String get yearly => 'ஆண்டு';

  @override
  String get euro3 => 'யூரோ 3';

  @override
  String get autoDiesel => 'ஆட்டோ டீசல்';

  @override
  String get superDiesel => 'சூப்பர் டீசல்';

  @override
  String get petrol95 => 'பெட்ரோல் 95';

  @override
  String get petrol92 => 'பெட்ரோல் 92';

  @override
  String get extraMile => 'எக்ஸ்ட்ரா மைல்';
}
