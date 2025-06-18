// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appName => 'FuelBack';

  @override
  String get phoneVerification => 'Телефон тасдиқлаш';

  @override
  String get enterSixDigitCode =>
      'SMS орқали юборилган 6 хонали кодни киритинг';

  @override
  String get didntReceiveCode => 'Код олмадингизми?';

  @override
  String get resendCode => 'Кодни қайта юбориш';

  @override
  String get verify => 'Тасдиқлаш';

  @override
  String get signIn => 'Кириш';

  @override
  String get signUp => 'Рўйхатдан ўтиш';

  @override
  String get phoneNumber => 'Телефон рақами';

  @override
  String get pleaseProvideInfo => 'Илтимос, қуйидаги маълумотларни киритинг';

  @override
  String get firstName => 'Исм';

  @override
  String get email => 'Электрон почта';

  @override
  String get emailOptional => 'Электрон почта (ихтиёрий)';

  @override
  String get referralCode => 'Реферал код';

  @override
  String get referralCodeOptional => 'Реферал код (ихтиёрий)';

  @override
  String get vehicleType => 'Транспорт тури';

  @override
  String get next => 'Кейинги';

  @override
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions) {
    return 'Давом этиш орқали сиз бизнинг $privacyPolicy ва $termsAndConditions га розилик билдирасиз';
  }

  @override
  String get privacyPolicy => 'Махфийлик сиёсати';

  @override
  String get termsAndConditions => 'Фойдаланиш шартлари';

  @override
  String hello(Object name) {
    return 'Салом, $name';
  }

  @override
  String get fuelUp => 'Ёқилғи олиш';

  @override
  String get transfer => 'Ўтказма';

  @override
  String get payBill => 'Ҳисоб тўлаш';

  @override
  String get accounts => 'Ҳисоблар';

  @override
  String get sendFuelz => 'Fuelz юбориш';

  @override
  String lkrToShare(Object amount) {
    return 'LKR $amount ulashish';
  }

  @override
  String get socialPortal => 'Ижтимоий портал';

  @override
  String get myFuelzBalance => 'Менинг Fuelz балансим';

  @override
  String get pending => 'Кутилмоқда';

  @override
  String get totalAvailable => 'Жами мавжуд';

  @override
  String get usable => 'Фойдаланиш мумкин';

  @override
  String get convertFuelz => 'Fuelz конвертация қилиш';

  @override
  String get purchaseHistory => 'Харид тарихи';

  @override
  String get carWash => 'Автомобиль ювиш';

  @override
  String get fuelType => 'Ёқилғи тури';

  @override
  String get priceTracking => 'Нархларни кузатиш';

  @override
  String get recommendedForYou => 'Сиз учун тавсия этилган';

  @override
  String get viewOnMap => 'Харитада кўриш';

  @override
  String getUpToGift(Object amount) {
    return '$amount L гача совға олинг';
  }

  @override
  String get inviteFriendsToFuelBack =>
      'Дўстларингизни FuelBack\'га таклиф қилинг';

  @override
  String get shareInvite => 'Таклифнома улашиш';

  @override
  String youPayGivesBack(Object company) {
    return 'Сиз тўлайсиз. $company қайтаради.';
  }

  @override
  String get evenForBoringStuff => 'Ҳатто зерикарли нарсалар учун ҳам.';

  @override
  String get wallet => 'Ҳамён';

  @override
  String get myBalances => 'Менинг балансларим';

  @override
  String get litersBalance => 'Литр баланси';

  @override
  String get gas => 'Ёқилғи';

  @override
  String get add => 'Қўшиш';

  @override
  String get changeFuelzToGreen =>
      'Fuelz\'ни Green Fuelz\'га алмаштиринг ва яшил лойиҳаларда иштирок этинг';

  @override
  String get uploadReceipt => 'Чек юклаш';

  @override
  String get completed => 'Бажарилди';

  @override
  String get receipt => 'Чек';

  @override
  String get total => 'Жами';

  @override
  String get initialAmount => 'Бошланғич сумма';

  @override
  String get spendFuelz => 'Fuelz сарфлаш';

  @override
  String get collectedFuelz => 'Йиғилган Fuelz';

  @override
  String get details => 'Тафсилотлар';

  @override
  String get receivedFuelz => 'Олинган Fuelz';

  @override
  String get liters => 'Литрлар';

  @override
  String get paymentMethod => 'Тўлов усули';

  @override
  String get proofOfTransaction => 'Транзакция исботи';

  @override
  String get viewReceipt => 'Чекни кўриш';

  @override
  String get bankAccounts => 'Банк ҳисоблари';

  @override
  String get noBankAccountYet => 'Сизда ҳали банк ҳисоби йўқ';

  @override
  String get futureBankAccounts =>
      'Сизнинг келажакдаги банк ҳисобларингиз шу ерда пайдо бўлади.';

  @override
  String get connectNewBankAccount => 'Янги банк ҳисобини улаш';

  @override
  String get newBankAccount => 'Янги банк ҳисоби';

  @override
  String get bank => 'Банк';

  @override
  String get chooseYourBank => 'Банкингизни танланг';

  @override
  String get accountNumber => 'Ҳисоб рақами';

  @override
  String get nationalIdCardNumber => 'Миллий ID карта рақами';

  @override
  String get setYourTransactionPin => 'Транзакция PIN кодини ўрнатиш';

  @override
  String get securePaymentsBy =>
      '4 хонали PIN код яратиб тўловларингизни ҳимоялаг. Бу PIN код барча транзакциялар учун талаб қилинади.';

  @override
  String get bankAccountNumber => 'Банк ҳисоб рақами';

  @override
  String get payment => 'Тўлов';

  @override
  String get paymentCompleted => 'Тўлов бажарилди';

  @override
  String get paymentFailed => 'Тўлов амалга ошмади';

  @override
  String get thankYouForPurchase => 'Харидингиз учун раҳмат';

  @override
  String get backHome => 'Бош саҳифага';

  @override
  String get tryAgain => 'Қайта уриниш';

  @override
  String get pleaseTryAgain => 'Илтимос, қайта уриниб кўринг';

  @override
  String get paymentProcessUnderway => 'Тўлов жараёни давом этмоқда';

  @override
  String get enterPinCode => 'PIN кодни киритинг';

  @override
  String get enterTransactionPin => 'Транзакция PIN кодини киритинг';

  @override
  String get toConfirmPayment =>
      'Тўловни тасдиқлаш учун PIN кодингизни киритинг';

  @override
  String get toConfirmPaymentTransaction =>
      'Тўловни тасдиқлаш учун транзакция PIN кодингизни киритинг';

  @override
  String get forgotPinCode => 'PIN кодни унутдингизми?';

  @override
  String get forgotTransactionPin => 'Транзакция PIN кодини унутдингизми?';

  @override
  String get pinCodeIncorrect =>
      'Киритилган PIN код нотўғри. Илтимос, қайта уриниб кўринг.';

  @override
  String get amount => 'Сумма';

  @override
  String get fuelback => 'Fuelback';

  @override
  String get fuelbackUsed => 'Фойдаланилган Fuelback';

  @override
  String get creditCard => 'Кредит карта';

  @override
  String get change => 'Ўзгартириш';

  @override
  String get pay => 'Тўлаш';

  @override
  String get sendReceiptByEmail => 'Чекни электрон почта орқали юборишми?';

  @override
  String get tips => 'Чой пули';

  @override
  String get tipsAmount => 'Чой пули миқдори';

  @override
  String get noTip => 'Чой пули йўқ';

  @override
  String get leaveATip => 'Чой пули қолдирасизми?';

  @override
  String get thankEmployeeByTip =>
      'Сиз ходимга чой пули қолдириб миннатдорчилик билдиришингиз мумкин';

  @override
  String get paymentMethodAdded => 'Янги тўлов усули муваффақиятли қўшилди';

  @override
  String get backToPaymentSelection => 'Тўлов танлашга қайтиш';

  @override
  String get newTitle => 'Янги';

  @override
  String get montant => 'Миқдор';

  @override
  String get purchaseFuel => 'Ёқилғи сотиб олиш';

  @override
  String get selectGasStation => 'Ёқилғи қуйиш станцияsини танланг';

  @override
  String get litersToPurchased => 'Сотиб олинадиган литрлар';

  @override
  String get purchase => 'Сотиб олиш';

  @override
  String get scanQrCode => 'QR кодни сканерлаш';

  @override
  String get paymentMode => 'Тўлов режими';

  @override
  String get physicalCashOrCard => 'Жисмоний (нақд ёки карта)';

  @override
  String get useWithFuelbackQr => 'Fuelback QR коди билан фойдаланиш';

  @override
  String get lankaQr => 'Lanka QR';

  @override
  String get refueling => 'Ёқилғи қуйиш';

  @override
  String get myQrCode => 'Менинг QR кодим';

  @override
  String get showToAttendant => 'Ёқилғи қуйиш станцияси ходимига кўрсатинг';

  @override
  String get redeemableBalance => 'Фойдаланиш мумкин бўлган баланс';

  @override
  String get redeemFuelz => 'Fuelz ишлатиш';

  @override
  String get toRedeemFuelz =>
      'Fuelz ишлатиш учун ҳисобингизда камида 5 та транзакция бўлиши керак.';

  @override
  String get cashCard => 'Нақд / Карта';

  @override
  String get viaFuelbackQr => 'Fuelback QR орқали';

  @override
  String get selfCheckIn => 'Ўз-ўзини рўйхатдан ўтказиш';

  @override
  String get testDalana => 'Тест - Далана';

  @override
  String get map => 'Харита';

  @override
  String get search => 'Қидирув';

  @override
  String get shops => 'Дўконлар';

  @override
  String get services => 'Хизматлар';

  @override
  String get getDirection => 'Йўналиш олиш';

  @override
  String get profile => 'Профил';

  @override
  String youHaveSavedSince(Object date) {
    return 'Сиз $date дан бери тежадингиз';
  }

  @override
  String get recentConsumption => 'Сўнгги истеъмол';

  @override
  String get inviteFriends => 'Дўстларни FuelBack\'га таклиф қилиш';

  @override
  String get getFuelzWhen =>
      'Дўстларингиз биринчи харид қилганда 50 Fuelz оласиз.';

  @override
  String get findOutMore => 'Батафсил маълумот';

  @override
  String get addPromoCode => 'Промо код қўшиш';

  @override
  String get paymentSettings => 'Тўлов созламалари';

  @override
  String get settings => 'Созламалар';

  @override
  String get myProjects => 'Менинг лойиҳаларим';

  @override
  String plantTrees(Object count) {
    return '$count дарахт экиш';
  }

  @override
  String get joinGreenInitiative =>
      'Шри-Ланка ландшафтини ўзгартириш бўйича яшил ташаббусимизга қўшилинг...';

  @override
  String get fundsCollected => 'Йиғилган маблағ';

  @override
  String get fuelzLiters => 'Fuelz литрлар';

  @override
  String get myBadges => 'Менинг нишонларим';

  @override
  String get accountInformation => 'Ҳисоб маълумотлари';

  @override
  String get updateEmail => 'Электрон почтани янгилаш';

  @override
  String get language => 'Тил';

  @override
  String get english => 'Инглизча';

  @override
  String get logOut => 'Чиқиш';

  @override
  String get deleteMyAccount => 'Ҳисобимни ўчириш';

  @override
  String get account => 'Ҳисоб';

  @override
  String get autoRedeemFuelz => 'Автоматик Fuelz ишлатиш';

  @override
  String get supportCenter => 'Ёрдам маркази';

  @override
  String get aboutUs => 'Биз ҳақимизда';

  @override
  String get disabled => 'Ўчирилган';

  @override
  String get enableAutoRedeem =>
      'Ёқилғи қуйишда Fuelz автоматик ишлатиш учун ёқинг.';

  @override
  String get needHelp => 'Ёрдам керакми?';

  @override
  String supportAvailable(Object email) {
    return 'Агар сизда муаммо ёки саволлар бўлса, исталган вақтда мурожаат қилинг. Бизнинг ёрдам хизмати 24/7 телефон ёки $email электрон почта орқали мавжуд, электрон почта жавоблари 48-72 соат ичида.';
  }

  @override
  String get callSupport => 'Ёрдамга қўнғироқ қилиш';

  @override
  String get sendEmail => 'Электрон почта юбориш';

  @override
  String get appNameFuelback => 'Илова номи: FuelBack App';

  @override
  String launchedIn(Object year) {
    return 'Ишга туширилган: $year';
  }

  @override
  String get ourMission => 'Бизнинг миссиямиз';

  @override
  String get missionText =>
      'Ҳар бир тафсилот бизнинг умумий тақдиримизни шакллантириш учун муҳим бўлган дунёда, жамият ҳақидаги қарашимиз барқарор фаровонликда гуллаб-яшнайди. Бизнинг қарашимиз - бу жамиятлар нафақат бугун, балки келажак авлодлар учун ҳам яхши кунларни қуриш имкониятига эга бўлган келажак. Олдиндан кўриш ва масъулият билан ҳаракат қилаётган шахсларнинг жамоавий саъй-ҳаракатлари туфайли биз бугун қилинган ҳар бир кичик қадам фаровонлик, уйғунлик ва мўл-кўллик меросини яратадиган уфқни кўрамиз. Бу атрофимизни онгли равишда ўстириш ва ҳаёт нозик томонларига эътибор бериш ўсиш ва бахт учун мисли кўрилмаган имкониятларни очадиган келажак.';

  @override
  String get ourVision => 'Бизнинг қарашимиз';

  @override
  String get visionText =>
      'Бизнинг миссиямиз бу ўзгарувчан саёҳатнинг катализатори бўлишдир. Тежаш одатларини тарбиялаш ва кундалик ҳаётнинг нозик тафсилотларини чуқур тушунишни сингдириш орқали биз ҳаётнинг барча йўлларида чуқур ва узоқ муддатли яхшиланиш учун замин яратамиз. Биз мажбурият оламиз:';

  @override
  String get inspiringAction =>
      'Яхши эртанги кун учун ҳаракатга илҳомлантириш:';

  @override
  String get inspiringActionText =>
      'Нафақат бизнинг бевосита эҳтиёжларимизга хизмат қиладиган, балки жамиятларимизнинг узоқ муддатли ҳаётийлиги ва соғлиғига ҳисса қўшадиган ҳаракатларни осонлаштириш ва рағбатлантириш.';

  @override
  String get fosteringEngagement => 'Жамоавий иштирокни ривожлантириш:';

  @override
  String get fosteringEngagementText =>
      'Ижобий ўзгаришларни яратиш учун умумий миссияда шахслар, жамоалар ва ҳамкорларни бирлаштириш, бирга-ликда ёлғиз қилганимиздан кўра кўпроқ нарсага эриша олишимизга ишончни мустаҳкамлаш.';

  @override
  String get promotingProsperity => 'Барқарор фаровонликни тарғиб қилиш:';

  @override
  String get promotingProsperityText =>
      'Бизнинг жамоавий саъй-ҳаракатларимиз ҳамма учун барқарор ва гуллаб-яшнаган келажакка олиб келишини таъминлайдиган амалиётлар ва ташаббусларни қўллаб-қувватлаш.';

  @override
  String get contactUs => 'Биз билан боғланиш';

  @override
  String get referrals => 'Тавсиялар';

  @override
  String get giveGiftOfFuelz => 'Дўстларга Fuelz совға қилинг';

  @override
  String get bothGetPromo =>
      'Дўстингиз биринчи буюртма берганида иккалангиз ҳам промо оласиз.';

  @override
  String get youGetOff => 'Сиз чегирма оласиз';

  @override
  String get theyGetOff => 'Улар чегирма олади';

  @override
  String lkrFuelz(Object amount, Object fuelz) {
    return 'Дўстингиз биринчи харид қилганда LKR $amount ($fuelz Fuelz).';
  }

  @override
  String forFirstOrder(Object amount, Object fuelz) {
    return 'Биринчи буюртма учун LKR $amount ($fuelz Fuelz)';
  }

  @override
  String get sharePromoCode => 'Fuelz олиш учун промо кодингизни улашинг';

  @override
  String get invitedFriends => 'Таклиф қилинган дўстлар';

  @override
  String get activate => 'Фаоллаштириш';

  @override
  String get notifications => 'Билдиришномалар';

  @override
  String get noNotifications => 'Билдиришномалар йўқ';

  @override
  String get futureNotifications =>
      'Сизнинг келажакдаги билдиришномаларингиз шу ерда пайдо бўлади.';

  @override
  String youReceived(Object amount) {
    return 'Сиз $amount Fuelz олдингиз';
  }

  @override
  String youFilledUp(Object station) {
    return 'Сиз машинангизни $station станциясида тўлдирдингиз...';
  }

  @override
  String get cancel => 'Бекор қилиш';

  @override
  String get takePicture => 'Расм олиш';

  @override
  String get choosePicture => 'Расм танлаш';

  @override
  String get delete => 'Ўчириш';

  @override
  String get save => 'Сақлаш';

  @override
  String get confirm => 'Тасдиқлаш';

  @override
  String get loading => 'Юкланмоқда...';

  @override
  String get error => 'Хато';

  @override
  String get success => 'Муваффақият';

  @override
  String get warning => 'Огоҳлантириш';

  @override
  String get info => 'Маълумот';

  @override
  String get yes => 'Ҳа';

  @override
  String get no => 'Йўқ';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Ёпиш';

  @override
  String get retry => 'Қайта уриниш';

  @override
  String get submit => 'Юбориш';

  @override
  String get done => 'Бажарилди';

  @override
  String get skip => 'Ўтказиб юбориш';

  @override
  String get continueTitle => 'Давом этиш';

  @override
  String get back => 'Орқага';

  @override
  String get edit => 'Таҳрирлаш';

  @override
  String get update => 'Янгилаш';

  @override
  String get remove => 'Ўчириш';

  @override
  String get share => 'Улашиш';

  @override
  String get copy => 'Нусхалаш';

  @override
  String get paste => 'Қўйиш';

  @override
  String get selectAll => 'Ҳаммасини танлаш';

  @override
  String get clear => 'Тозалаш';

  @override
  String get reset => 'Қайта ўрнатиш';

  @override
  String get refresh => 'Янгилаш';

  @override
  String get more => 'Кўпроқ';

  @override
  String get less => 'Камроқ';

  @override
  String get showMore => 'Кўпроқ кўрсатиш';

  @override
  String get showLess => 'Камроқ кўрсатиш';

  @override
  String get seeAll => 'Ҳаммасини кўриш';

  @override
  String get collapse => 'Йиғиш';

  @override
  String get expand => 'Кенгайтириш';

  @override
  String get today => 'Бугун';

  @override
  String get yesterday => 'Кеча';

  @override
  String get tomorrow => 'Эртага';

  @override
  String get now => 'Ҳозир';

  @override
  String get later => 'Кейинроқ';

  @override
  String get soon => 'Тез орада';

  @override
  String get never => 'Ҳеч қачон';

  @override
  String get always => 'Доим';

  @override
  String get sometimes => 'Баъзан';

  @override
  String get daily => 'Кунлик';

  @override
  String get weekly => 'Ҳафталик';

  @override
  String get monthly => 'Ойлик';

  @override
  String get yearly => 'Йиллик';

  @override
  String get euro3 => 'Евро 3';

  @override
  String get autoDiesel => 'Авто дизел';

  @override
  String get superDiesel => 'Супер дизел';

  @override
  String get petrol95 => 'Бензин 95';

  @override
  String get petrol92 => 'Бензин 92';

  @override
  String get extraMile => 'Экстра мил';
}
