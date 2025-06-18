// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appName => 'FuelBack';

  @override
  String get phoneVerification => 'Telefon tasdiqlash';

  @override
  String get enterSixDigitCode =>
      'SMS orqali yuborilgan 6 xonali kodni kiriting';

  @override
  String get didntReceiveCode => 'Kod olmadingizmi?';

  @override
  String get resendCode => 'Kodni qayta yuborish';

  @override
  String get verify => 'Tasdiqlash';

  @override
  String get signIn => 'Kirish';

  @override
  String get signUp => 'Ro\'yxatdan o\'tish';

  @override
  String get phoneNumber => 'Telefon raqami';

  @override
  String get pleaseProvideInfo => 'Iltimos, quyidagi ma\'lumotlarni kiriting';

  @override
  String get firstName => 'Ism';

  @override
  String get email => 'Elektron pochta';

  @override
  String get emailOptional => 'Elektron pochta (ixtiyoriy)';

  @override
  String get referralCode => 'Referal kod';

  @override
  String get referralCodeOptional => 'Referal kod (ixtiyoriy)';

  @override
  String get vehicleType => 'Transport turi';

  @override
  String get next => 'Keyingi';

  @override
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions) {
    return 'Davom etish orqali siz bizning $privacyPolicy va $termsAndConditions ga rozilik bildirasiz';
  }

  @override
  String get privacyPolicy => 'Maxfiylik siyosati';

  @override
  String get termsAndConditions => 'Foydalanish shartlari';

  @override
  String hello(Object name) {
    return 'Salom, $name';
  }

  @override
  String get fuelUp => 'Yoqilg\'i olish';

  @override
  String get transfer => 'O\'tkazma';

  @override
  String get payBill => 'Hisob to\'lash';

  @override
  String get accounts => 'Hisoblar';

  @override
  String get sendFuelz => 'Fuelz yuborish';

  @override
  String lkrToShare(Object amount) {
    return 'LKR $amount ulashish';
  }

  @override
  String get socialPortal => 'Ijtimoiy portal';

  @override
  String get myFuelzBalance => 'Mening Fuelz balansim';

  @override
  String get pending => 'Kutilmoqda';

  @override
  String get totalAvailable => 'Jami mavjud';

  @override
  String get usable => 'Foydalanish mumkin';

  @override
  String get convertFuelz => 'Fuelz konvertatsiya qilish';

  @override
  String get purchaseHistory => 'Xarid tarixi';

  @override
  String get carWash => 'Avtomobil yuvish';

  @override
  String get fuelType => 'Yoqilg\'i turi';

  @override
  String get priceTracking => 'Narxlarni kuzatish';

  @override
  String get recommendedForYou => 'Siz uchun tavsiya etilgan';

  @override
  String get viewOnMap => 'Xaritada ko\'rish';

  @override
  String getUpToGift(Object amount) {
    return '$amount L gacha sovg\'a oling';
  }

  @override
  String get inviteFriendsToFuelBack =>
      'Do\'stlaringizni FuelBack\'ga taklif qiling';

  @override
  String get shareInvite => 'Taklifnoma ulashish';

  @override
  String youPayGivesBack(Object company) {
    return 'Siz to\'laysiz. $company qaytaradi.';
  }

  @override
  String get evenForBoringStuff => 'Hatto zerikarli narsalar uchun ham.';

  @override
  String get wallet => 'Hamyon';

  @override
  String get myBalances => 'Mening balanslarim';

  @override
  String get litersBalance => 'Litr balansi';

  @override
  String get gas => 'Yoqilg\'i';

  @override
  String get add => 'Qo\'shish';

  @override
  String get changeFuelzToGreen =>
      'Fuelz\'ni Green Fuelz\'ga almashtiring va yashil loyihalarda ishtirok eting';

  @override
  String get uploadReceipt => 'Chek yuklash';

  @override
  String get completed => 'Bajarildi';

  @override
  String get receipt => 'Chek';

  @override
  String get total => 'Jami';

  @override
  String get initialAmount => 'Boshlang\'ich summa';

  @override
  String get spendFuelz => 'Fuelz sarflash';

  @override
  String get collectedFuelz => 'Yig\'ilgan Fuelz';

  @override
  String get details => 'Tafsilotlar';

  @override
  String get receivedFuelz => 'Olingan Fuelz';

  @override
  String get liters => 'Litrlar';

  @override
  String get paymentMethod => 'To\'lov usuli';

  @override
  String get proofOfTransaction => 'Tranzaksiya isboti';

  @override
  String get viewReceipt => 'Chekni ko\'rish';

  @override
  String get bankAccounts => 'Bank hisoblari';

  @override
  String get noBankAccountYet => 'Sizda hali bank hisobi yo\'q';

  @override
  String get futureBankAccounts =>
      'Sizning kelajakdagi bank hisoblaringiz shu yerda paydo bo\'ladi.';

  @override
  String get connectNewBankAccount => 'Yangi bank hisobini ulash';

  @override
  String get newBankAccount => 'Yangi bank hisobi';

  @override
  String get bank => 'Bank';

  @override
  String get chooseYourBank => 'Bankingizni tanlang';

  @override
  String get accountNumber => 'Hisob raqami';

  @override
  String get nationalIdCardNumber => 'Milliy ID karta raqami';

  @override
  String get setYourTransactionPin => 'Tranzaksiya PIN kodini o\'rnatish';

  @override
  String get securePaymentsBy =>
      '4 xonali PIN kod yaratib to\'lovlaringizni himoyalang. Bu PIN kod barcha tranzaksiyalar uchun talab qilinadi.';

  @override
  String get bankAccountNumber => 'Bank hisob raqami';

  @override
  String get payment => 'To\'lov';

  @override
  String get paymentCompleted => 'To\'lov bajarildi';

  @override
  String get paymentFailed => 'To\'lov amalga oshmadi';

  @override
  String get thankYouForPurchase => 'Xaridingiz uchun rahmat';

  @override
  String get backHome => 'Bosh sahifaga';

  @override
  String get tryAgain => 'Qayta urinish';

  @override
  String get pleaseTryAgain => 'Iltimos, qayta urinib ko\'ring';

  @override
  String get paymentProcessUnderway => 'To\'lov jarayoni davom etmoqda';

  @override
  String get enterPinCode => 'PIN kodni kiriting';

  @override
  String get enterTransactionPin => 'Tranzaksiya PIN kodini kiriting';

  @override
  String get toConfirmPayment =>
      'To\'lovni tasdiqlash uchun PIN kodingizni kiriting';

  @override
  String get toConfirmPaymentTransaction =>
      'To\'lovni tasdiqlash uchun tranzaksiya PIN kodingizni kiriting';

  @override
  String get forgotPinCode => 'PIN kodni unutdingizmi?';

  @override
  String get forgotTransactionPin => 'Tranzaksiya PIN kodini unutdingizmi?';

  @override
  String get pinCodeIncorrect =>
      'Kiritilgan PIN kod noto\'g\'ri. Iltimos, qayta urinib ko\'ring.';

  @override
  String get amount => 'Summa';

  @override
  String get fuelback => 'Fuelback';

  @override
  String get fuelbackUsed => 'Foydalanilgan Fuelback';

  @override
  String get creditCard => 'Kredit karta';

  @override
  String get change => 'O\'zgartirish';

  @override
  String get pay => 'To\'lash';

  @override
  String get sendReceiptByEmail => 'Chekni elektron pochta orqali yuborishmi?';

  @override
  String get tips => 'Choy puli';

  @override
  String get tipsAmount => 'Choy puli miqdori';

  @override
  String get noTip => 'Choy puli yo\'q';

  @override
  String get leaveATip => 'Choy puli qoldirasizmi?';

  @override
  String get thankEmployeeByTip =>
      'Siz xodimga choy puli qoldirib minnatdorchilik bildirishingiz mumkin';

  @override
  String get paymentMethodAdded =>
      'Yangi to\'lov usuli muvaffaqiyatli qo\'shildi';

  @override
  String get backToPaymentSelection => 'To\'lov tanlashga qaytish';

  @override
  String get newTitle => 'Yangi';

  @override
  String get montant => 'Miqdor';

  @override
  String get purchaseFuel => 'Yoqilg\'i sotib olish';

  @override
  String get selectGasStation => 'Yoqilg\'i quyish stansiyasini tanlang';

  @override
  String get litersToPurchased => 'Sotib olinadigan litrlar';

  @override
  String get purchase => 'Sotib olish';

  @override
  String get scanQrCode => 'QR kodni skanerlash';

  @override
  String get paymentMode => 'To\'lov rejimi';

  @override
  String get physicalCashOrCard => 'Jismoniy (naqd yoki karta)';

  @override
  String get useWithFuelbackQr => 'Fuelback QR kodi bilan foydalanish';

  @override
  String get lankaQr => 'Lanka QR';

  @override
  String get refueling => 'Yoqilg\'i quyish';

  @override
  String get myQrCode => 'Mening QR kodim';

  @override
  String get showToAttendant =>
      'Yoqilg\'i quyish stansiyasi xodimiga ko\'rsating';

  @override
  String get redeemableBalance => 'Foydalanish mumkin bo\'lgan balans';

  @override
  String get redeemFuelz => 'Fuelz ishlatish';

  @override
  String get toRedeemFuelz =>
      'Fuelz ishlatish uchun hisobingizda kamida 5 ta tranzaksiya bo\'lishi kerak.';

  @override
  String get cashCard => 'Naqd / Karta';

  @override
  String get viaFuelbackQr => 'Fuelback QR orqali';

  @override
  String get selfCheckIn => 'O\'z-o\'zini ro\'yxatdan o\'tkazish';

  @override
  String get testDalana => 'Test - Dalana';

  @override
  String get map => 'Xarita';

  @override
  String get search => 'Qidiruv';

  @override
  String get shops => 'Do\'konlar';

  @override
  String get services => 'Xizmatlar';

  @override
  String get getDirection => 'Yo\'nalish olish';

  @override
  String get profile => 'Profil';

  @override
  String youHaveSavedSince(Object date) {
    return 'Siz $date dan beri tejadingiz';
  }

  @override
  String get recentConsumption => 'So\'nggi iste\'mol';

  @override
  String get inviteFriends => 'Do\'stlarni FuelBack\'ga taklif qilish';

  @override
  String get getFuelzWhen =>
      'Do\'stlaringiz birinchi xarid qilganda 50 Fuelz olasiz.';

  @override
  String get findOutMore => 'Batafsil ma\'lumot';

  @override
  String get addPromoCode => 'Promo kod qo\'shish';

  @override
  String get paymentSettings => 'To\'lov sozlamalari';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get myProjects => 'Mening loyihalarim';

  @override
  String plantTrees(Object count) {
    return '$count daraxt ekish';
  }

  @override
  String get joinGreenInitiative =>
      'Shri-Lanka landshaftini o\'zgartirish bo\'yicha yashil tashabbusimizga qo\'shiling...';

  @override
  String get fundsCollected => 'Yig\'ilgan mablag\'';

  @override
  String get fuelzLiters => 'Fuelz litrlar';

  @override
  String get myBadges => 'Mening nishonlarim';

  @override
  String get accountInformation => 'Hisob ma\'lumotlari';

  @override
  String get updateEmail => 'Elektron pochtani yangilash';

  @override
  String get language => 'Til';

  @override
  String get english => 'Inglizcha';

  @override
  String get logOut => 'Chiqish';

  @override
  String get deleteMyAccount => 'Hisobimni o\'chirish';

  @override
  String get account => 'Hisob';

  @override
  String get autoRedeemFuelz => 'Avtomatik Fuelz ishlatish';

  @override
  String get supportCenter => 'Yordam markazi';

  @override
  String get aboutUs => 'Biz haqimizda';

  @override
  String get disabled => 'O\'chirilgan';

  @override
  String get enableAutoRedeem =>
      'Yoqilg\'i quyishda Fuelz avtomatik ishlatish uchun yoqing.';

  @override
  String get needHelp => 'Yordam kerakmi?';

  @override
  String supportAvailable(Object email) {
    return 'Agar sizda muammo yoki savollar bo\'lsa, istalgan vaqtda murojaat qiling. Bizning yordam xizmati 24/7 telefon yoki $email elektron pochta orqali mavjud, elektron pochta javoblari 48-72 soat ichida.';
  }

  @override
  String get callSupport => 'Yordamga qo\'ng\'iroq qilish';

  @override
  String get sendEmail => 'Elektron pochta yuborish';

  @override
  String get appNameFuelback => 'Ilova nomi: FuelBack App';

  @override
  String launchedIn(Object year) {
    return 'Ishga tushirilgan: $year';
  }

  @override
  String get ourMission => 'Bizning missiyamiz';

  @override
  String get missionText =>
      'Har bir tafsilot bizning umumiy taqdirimizni shakllantirish uchun muhim bo\'lgan dunyoda, jamiyat haqidagi qarashimiz barqaror farovonlikda gullab-yashnaydi. Bizning qarashimiz - bu jamiyatlar nafaqat bugun, balki kelajak avlodlar uchun ham yaxshi kunlarni qurish imkoniyatiga ega bo\'lgan kelajak. Oldindan ko\'rish va mas\'uliyat bilan harakat qilayotgan shaxslarning jamoaviy sa\'y-harakatlari tufayli biz bugun qilingan har bir kichik qadam farovonlik, uyg\'unlik va mo\'l-ko\'llik merosini yaratadigan ufqni ko\'ramiz. Bu atrofimizni ongli ravishda o\'stirish va hayot nozik tomonlariga e\'tibor berish o\'sish va baxt uchun misli ko\'rilmagan imkoniyatlarni ochadigan kelajak.';

  @override
  String get ourVision => 'Bizning qarashimiz';

  @override
  String get visionText =>
      'Bizning missiyamiz bu o\'zgaruvchan sayohatning katalizatori bo\'lishdir. Tejash odatlarini tarbiyalash va kundalik hayotning nozik tafsilotlarini chuqur tushunishni singdirish orqali biz hayotning barcha yo\'llarida chuqur va uzoq muddatli yaxshilanish uchun zamin yaratamiz. Biz majburiyat olamiz:';

  @override
  String get inspiringAction =>
      'Yaxshi ertangi kun uchun harakatga ilhomlantirish:';

  @override
  String get inspiringActionText =>
      'Nafaqat bizning bevosita ehtiyojlarimizga xizmat qiladigan, balki jamiyatlarimizning uzoq muddatli hayotiyligi va sog\'lig\'iga hissa qo\'shadigan harakatlarni osonlashtirish va rag\'batlantirish.';

  @override
  String get fosteringEngagement => 'Jamoaviy ishtirokni rivojlantirish:';

  @override
  String get fosteringEngagementText =>
      'Ijobiy o\'zgarishlarni yaratish uchun umumiy missiyada shaxslar, jamoalar va hamkorlarni birlashtirish, birgalikda yolg\'iz qilganimizdan ko\'ra ko\'proq narsaga erisha olishimizga ishonchni mustahkamlash.';

  @override
  String get promotingProsperity => 'Barqaror farovonlikni targ\'ib qilish:';

  @override
  String get promotingProsperityText =>
      'Bizning jamoaviy sa\'y-harakatlarimiz hamma uchun barqaror va gullab-yashnagan kelajakka olib kelishini ta\'minlaydigan amaliyotlar va tashabbuslarni qo\'llab-quvvatlash.';

  @override
  String get contactUs => 'Biz bilan bog\'lanish';

  @override
  String get referrals => 'Tavsiyalar';

  @override
  String get giveGiftOfFuelz => 'Do\'stlarga Fuelz sovg\'a qiling';

  @override
  String get bothGetPromo =>
      'Do\'stingiz birinchi buyurtma berganida ikkalangiz ham promo olasiz.';

  @override
  String get youGetOff => 'Siz chegirma olasiz';

  @override
  String get theyGetOff => 'Ular chegirma oladi';

  @override
  String lkrFuelz(Object amount, Object fuelz) {
    return 'Do\'stingiz birinchi xarid qilganda LKR $amount ($fuelz Fuelz).';
  }

  @override
  String forFirstOrder(Object amount, Object fuelz) {
    return 'Birinchi buyurtma uchun LKR $amount ($fuelz Fuelz)';
  }

  @override
  String get sharePromoCode => 'Fuelz olish uchun promo kodingizni ulashing';

  @override
  String get invitedFriends => 'Taklif qilingan do\'stlar';

  @override
  String get activate => 'Faollashtirish';

  @override
  String get notifications => 'Bildirishnomalar';

  @override
  String get noNotifications => 'Bildirishnomalar yo\'q';

  @override
  String get futureNotifications =>
      'Sizning kelajakdagi bildirishnomalaringiz shu yerda paydo bo\'ladi.';

  @override
  String youReceived(Object amount) {
    return 'Siz $amount Fuelz oldingiz';
  }

  @override
  String youFilledUp(Object station) {
    return 'Siz mashinangizni $station stansiyasida to\'ldirdingiz...';
  }

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get takePicture => 'Rasm olish';

  @override
  String get choosePicture => 'Rasm tanlash';

  @override
  String get delete => 'O\'chirish';

  @override
  String get save => 'Saqlash';

  @override
  String get confirm => 'Tasdiqlash';

  @override
  String get loading => 'Yuklanmoqda...';

  @override
  String get error => 'Xato';

  @override
  String get success => 'Muvaffaqiyat';

  @override
  String get warning => 'Ogohlantirish';

  @override
  String get info => 'Ma\'lumot';

  @override
  String get yes => 'Ha';

  @override
  String get no => 'Yo\'q';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Yopish';

  @override
  String get retry => 'Qayta urinish';

  @override
  String get submit => 'Yuborish';

  @override
  String get done => 'Bajarildi';

  @override
  String get skip => 'O\'tkazib yuborish';

  @override
  String get continueTitle => 'Davom etish';

  @override
  String get back => 'Orqaga';

  @override
  String get edit => 'Tahrirlash';

  @override
  String get update => 'Yangilash';

  @override
  String get remove => 'O\'chirish';

  @override
  String get share => 'Ulashish';

  @override
  String get copy => 'Nusxalash';

  @override
  String get paste => 'Qo\'yish';

  @override
  String get selectAll => 'Hammasini tanlash';

  @override
  String get clear => 'Tozalash';

  @override
  String get reset => 'Qayta o\'rnatish';

  @override
  String get refresh => 'Yangilash';

  @override
  String get more => 'Ko\'proq';

  @override
  String get less => 'Kamroq';

  @override
  String get showMore => 'Ko\'proq ko\'rsatish';

  @override
  String get showLess => 'Kamroq ko\'rsatish';

  @override
  String get seeAll => 'Hammasini ko\'rish';

  @override
  String get collapse => 'Yig\'ish';

  @override
  String get expand => 'Kengaytirish';

  @override
  String get today => 'Bugun';

  @override
  String get yesterday => 'Kecha';

  @override
  String get tomorrow => 'Ertaga';

  @override
  String get now => 'Hozir';

  @override
  String get later => 'Keyinroq';

  @override
  String get soon => 'Tez orada';

  @override
  String get never => 'Hech qachon';

  @override
  String get always => 'Doim';

  @override
  String get sometimes => 'Ba\'zan';

  @override
  String get daily => 'Kunlik';

  @override
  String get weekly => 'Haftalik';

  @override
  String get monthly => 'Oylik';

  @override
  String get yearly => 'Yillik';

  @override
  String get euro3 => 'Euro 3';

  @override
  String get autoDiesel => 'Avto dizel';

  @override
  String get superDiesel => 'Super dizel';

  @override
  String get petrol95 => 'Benzin 95';

  @override
  String get petrol92 => 'Benzin 92';

  @override
  String get extraMile => 'Ekstra mil';
}
