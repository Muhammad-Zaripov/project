// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'FuelBack';

  @override
  String get phoneVerification => 'Подтверждение телефона';

  @override
  String get enterSixDigitCode => 'Введите 6-значный код, отправленный по SMS';

  @override
  String get didntReceiveCode => 'Не получили код?';

  @override
  String get resendCode => 'Отправить код повторно';

  @override
  String get verify => 'Подтвердить';

  @override
  String get signIn => 'Войти';

  @override
  String get signUp => 'Регистрация';

  @override
  String get phoneNumber => 'Номер телефона';

  @override
  String get pleaseProvideInfo =>
      'Пожалуйста, предоставьте следующую информацию';

  @override
  String get firstName => 'Имя';

  @override
  String get email => 'Электронная почта';

  @override
  String get emailOptional => 'Электронная почта (необязательно)';

  @override
  String get referralCode => 'Реферальный код';

  @override
  String get referralCodeOptional => 'Реферальный код (необязательно)';

  @override
  String get vehicleType => 'Тип транспорта';

  @override
  String get next => 'Далее';

  @override
  String byContiuningYouAgree(Object privacyPolicy, Object termsAndConditions) {
    return 'Продолжая, вы соглашаетесь с нашей $privacyPolicy и нашими $termsAndConditions';
  }

  @override
  String get privacyPolicy => 'Политикой конфиденциальности';

  @override
  String get termsAndConditions => 'Условиями использования';

  @override
  String hello(Object name) {
    return 'Привет, $name';
  }

  @override
  String get fuelUp => 'Заправка';

  @override
  String get transfer => 'Перевод';

  @override
  String get payBill => 'Оплата счета';

  @override
  String get accounts => 'Счета';

  @override
  String get sendFuelz => 'Отправить Fuelz';

  @override
  String lkrToShare(Object amount) {
    return 'LKR $amount to share';
  }

  @override
  String get socialPortal => 'Социальный портал';

  @override
  String get myFuelzBalance => 'Мой баланс Fuelz';

  @override
  String get pending => 'В ожидании';

  @override
  String get totalAvailable => 'Всего доступно';

  @override
  String get usable => 'Доступно к использованию';

  @override
  String get convertFuelz => 'Конвертировать Fuelz';

  @override
  String get purchaseHistory => 'История покупок';

  @override
  String get carWash => 'Автомойка';

  @override
  String get fuelType => 'Тип топлива';

  @override
  String get priceTracking => 'Отслеживание цен';

  @override
  String get recommendedForYou => 'Рекомендовано для вас';

  @override
  String get viewOnMap => 'Посмотреть на карте';

  @override
  String getUpToGift(Object amount) {
    return 'Получите до $amount л в подарок';
  }

  @override
  String get inviteFriendsToFuelBack => 'Пригласите друзей в FuelBack';

  @override
  String get shareInvite => 'Поделиться приглашением';

  @override
  String youPayGivesBack(Object company) {
    return 'Вы платите. $company возвращает.';
  }

  @override
  String get evenForBoringStuff => 'Даже за скучные вещи.';

  @override
  String get wallet => 'Кошелек';

  @override
  String get myBalances => 'Мои балансы';

  @override
  String get litersBalance => 'Баланс литров';

  @override
  String get gas => 'Топливо';

  @override
  String get add => 'Добавить';

  @override
  String get changeFuelzToGreen =>
      'Обменяйте Fuelz на Green Fuelz и участвуйте в экологических проектах';

  @override
  String get uploadReceipt => 'Загрузить чек';

  @override
  String get completed => 'Завершено';

  @override
  String get receipt => 'Чек';

  @override
  String get total => 'Итого';

  @override
  String get initialAmount => 'Начальная сумма';

  @override
  String get spendFuelz => 'Потратить Fuelz';

  @override
  String get collectedFuelz => 'Собрано Fuelz';

  @override
  String get details => 'Детали';

  @override
  String get receivedFuelz => 'Получено Fuelz';

  @override
  String get liters => 'Литры';

  @override
  String get paymentMethod => 'Способ оплаты';

  @override
  String get proofOfTransaction => 'Подтверждение транзакции';

  @override
  String get viewReceipt => 'Посмотреть чек';

  @override
  String get bankAccounts => 'Банковские счета';

  @override
  String get noBankAccountYet => 'У вас еще нет банковского счета';

  @override
  String get futureBankAccounts =>
      'Ваши будущие банковские счета появятся здесь.';

  @override
  String get connectNewBankAccount => 'Подключить новый банковский счет';

  @override
  String get newBankAccount => 'Новый банковский счет';

  @override
  String get bank => 'Банк';

  @override
  String get chooseYourBank => 'Выберите ваш банк';

  @override
  String get accountNumber => 'Номер счета';

  @override
  String get nationalIdCardNumber =>
      'Номер национального удостоверения личности';

  @override
  String get setYourTransactionPin => 'Установите PIN-код транзакции';

  @override
  String get securePaymentsBy =>
      'Защитите свои платежи, создав 4-значный PIN-код. Этот PIN-код потребуется для всех транзакций.';

  @override
  String get bankAccountNumber => 'Номер банковского счета';

  @override
  String get payment => 'Оплата';

  @override
  String get paymentCompleted => 'Оплата завершена';

  @override
  String get paymentFailed => 'Оплата не удалась';

  @override
  String get thankYouForPurchase => 'Спасибо за покупку';

  @override
  String get backHome => 'На главную';

  @override
  String get tryAgain => 'Попробовать снова';

  @override
  String get pleaseTryAgain => 'Пожалуйста, попробуйте снова';

  @override
  String get paymentProcessUnderway => 'Процесс оплаты выполняется';

  @override
  String get enterPinCode => 'Введите PIN-код';

  @override
  String get enterTransactionPin => 'Введите PIN-код транзакции';

  @override
  String get toConfirmPayment =>
      'Для подтверждения платежа введите ваш PIN-код';

  @override
  String get toConfirmPaymentTransaction =>
      'Для подтверждения платежа введите ваш PIN-код транзакции';

  @override
  String get forgotPinCode => 'Забыли PIN-код?';

  @override
  String get forgotTransactionPin => 'Забыли PIN-код транзакции?';

  @override
  String get pinCodeIncorrect =>
      'Введенный PIN-код неверен. Пожалуйста, попробуйте снова.';

  @override
  String get amount => 'Сумма';

  @override
  String get fuelback => 'Fuelback';

  @override
  String get fuelbackUsed => 'Использовано Fuelback';

  @override
  String get creditCard => 'Кредитная карта';

  @override
  String get change => 'Изменить';

  @override
  String get pay => 'Оплатить';

  @override
  String get sendReceiptByEmail => 'Отправить чек по электронной почте?';

  @override
  String get tips => 'Чаевые';

  @override
  String get tipsAmount => 'Сумма чаевых';

  @override
  String get noTip => 'Без чаевых';

  @override
  String get leaveATip => 'Оставить чаевые?';

  @override
  String get thankEmployeeByTip =>
      'Вы можете поблагодарить сотрудника, оставив чаевые';

  @override
  String get paymentMethodAdded => 'Новый способ оплаты успешно добавлен';

  @override
  String get backToPaymentSelection => 'Вернуться к выбору способа оплаты';

  @override
  String get newTitle => 'Новый';

  @override
  String get montant => 'Сумма';

  @override
  String get purchaseFuel => 'Купить топливо';

  @override
  String get selectGasStation => 'Выберите заправочную станцию';

  @override
  String get litersToPurchased => 'Литров к покупке';

  @override
  String get purchase => 'Купить';

  @override
  String get scanQrCode => 'Сканировать QR-код';

  @override
  String get paymentMode => 'Режим оплаты';

  @override
  String get physicalCashOrCard => 'Физический (наличные или карта)';

  @override
  String get useWithFuelbackQr => 'Использовать с QR-кодом Fuelback';

  @override
  String get lankaQr => 'Lanka QR';

  @override
  String get refueling => 'Заправка';

  @override
  String get myQrCode => 'Мой QR-код';

  @override
  String get showToAttendant => 'Покажите обслуживающему персоналу заправки';

  @override
  String get redeemableBalance => 'Доступный баланс';

  @override
  String get redeemFuelz => 'Использовать Fuelz';

  @override
  String get toRedeemFuelz =>
      'Чтобы использовать Fuelz, на вашем счету должно быть минимум 5 транзакций.';

  @override
  String get cashCard => 'Наличные / Карта';

  @override
  String get viaFuelbackQr => 'через Fuelback QR';

  @override
  String get selfCheckIn => 'Самостоятельная регистрация';

  @override
  String get testDalana => 'Тест - Далана';

  @override
  String get map => 'Карта';

  @override
  String get search => 'Поиск';

  @override
  String get shops => 'Магазины';

  @override
  String get services => 'Услуги';

  @override
  String get getDirection => 'Проложить маршрут';

  @override
  String get profile => 'Профиль';

  @override
  String youHaveSavedSince(Object date) {
    return 'Вы сэкономили с $date';
  }

  @override
  String get recentConsumption => 'Недавнее потребление';

  @override
  String get inviteFriends => 'Пригласить друзей в FuelBack';

  @override
  String get getFuelzWhen =>
      'Вы получите 50 Fuelz, когда ваши друзья совершат первую покупку.';

  @override
  String get findOutMore => 'Узнать больше';

  @override
  String get addPromoCode => 'Добавить промокод';

  @override
  String get paymentSettings => 'Настройки оплаты';

  @override
  String get settings => 'Настройки';

  @override
  String get myProjects => 'Мои проекты';

  @override
  String plantTrees(Object count) {
    return 'Посадить $count деревьев';
  }

  @override
  String get joinGreenInitiative =>
      'Присоединяйтесь к нашей экологической инициативе по преобразованию ландшафта Шри-Ланки...';

  @override
  String get fundsCollected => 'Собрано средств';

  @override
  String get fuelzLiters => 'Литры Fuelz';

  @override
  String get myBadges => 'Мои значки';

  @override
  String get accountInformation => 'Информация об учетной записи';

  @override
  String get updateEmail => 'Обновить электронную почту';

  @override
  String get language => 'Язык';

  @override
  String get english => 'Английский';

  @override
  String get logOut => 'Выйти';

  @override
  String get deleteMyAccount => 'Удалить мою учетную запись';

  @override
  String get account => 'Учетная запись';

  @override
  String get autoRedeemFuelz => 'Автоматическое использование Fuelz';

  @override
  String get supportCenter => 'Центр поддержки';

  @override
  String get aboutUs => 'О нас';

  @override
  String get disabled => 'Отключено';

  @override
  String get enableAutoRedeem =>
      'Включите для автоматического использования Fuelz при заправке.';

  @override
  String get needHelp => 'Нужна помощь?';

  @override
  String supportAvailable(Object email) {
    return 'Если у вас есть какие-либо проблемы или вопросы, обращайтесь в любое время. Наша поддержка доступна 24/7 по телефону или электронной почте $email, ответы по электронной почте в течение 48-72 часов.';
  }

  @override
  String get callSupport => 'Позвонить в поддержку';

  @override
  String get sendEmail => 'Отправить письмо';

  @override
  String get appNameFuelback => 'Название приложения: FuelBack App';

  @override
  String launchedIn(Object year) {
    return 'Запущено в: $year';
  }

  @override
  String get ourMission => 'Наша миссия';

  @override
  String get missionText =>
      'В мире, где каждая деталь имеет значение для формирования нашей общей судьбы, наше видение общества процветает на устойчивом процветании. Наше видение - это будущее, где сообщества имеют возможность строить лучшие дни не только для сегодняшнего дня, но и для будущих поколений. Благодаря коллективным усилиям людей, действующих с предвидением и ответственностью, мы видим горизонт, где каждый маленький шаг, сделанный сегодня, создает наследие благополучия, гармонии и изобилия. Это будущее, где осознанное культивирование нашего окружения и внимание к нюансам жизни открывают беспрецедентные возможности для роста и счастья.';

  @override
  String get ourVision => 'Наше видение';

  @override
  String get visionText =>
      'Наша миссия - быть катализатором этого трансформационного путешествия. Воспитывая привычки экономии и прививая глубокое понимание тонких деталей повседневной жизни, мы создаем основу для глубокого и длительного улучшения во всех сферах жизни. Мы обязуемся:';

  @override
  String get inspiringAction => 'Вдохновлять на действия для лучшего завтра:';

  @override
  String get inspiringActionText =>
      'Содействовать и поощрять действия, которые не только служат нашим непосредственным потребностям, но и способствуют долгосрочной жизнеспособности и здоровью наших сообществ.';

  @override
  String get fosteringEngagement => 'Содействовать коллективному участию:';

  @override
  String get fosteringEngagementText =>
      'Объединять людей, сообщества и партнеров в общей миссии по созданию позитивных изменений, укрепляя веру в то, что вместе мы можем достичь большего, чем в одиночку.';

  @override
  String get promotingProsperity => 'Продвигать устойчивое процветание:';

  @override
  String get promotingProsperityText =>
      'Поддерживать практики и инициативы, которые гарантируют, что наши коллективные усилия приведут к устойчивому и процветающему будущему для всех.';

  @override
  String get contactUs => 'Свяжитесь с нами';

  @override
  String get referrals => 'Рефералы';

  @override
  String get giveGiftOfFuelz => 'Подарите Fuelz друзьям';

  @override
  String get bothGetPromo =>
      'Вы оба получите промо, когда ваш друг сделает первый заказ.';

  @override
  String get youGetOff => 'Вы получаете скидку';

  @override
  String get theyGetOff => 'Они получают скидку';

  @override
  String lkrFuelz(Object amount, Object fuelz) {
    return 'LKR $amount ($fuelz Fuelz), когда ваш друг совершит первую покупку.';
  }

  @override
  String forFirstOrder(Object amount, Object fuelz) {
    return 'За первый заказ LKR $amount ($fuelz Fuelz)';
  }

  @override
  String get sharePromoCode =>
      'Поделитесь своим промокодом, чтобы получить fuelz';

  @override
  String get invitedFriends => 'Приглашенные друзья';

  @override
  String get activate => 'Активировать';

  @override
  String get notifications => 'Уведомления';

  @override
  String get noNotifications => 'Нет уведомлений';

  @override
  String get futureNotifications => 'Ваши будущие уведомления появятся здесь.';

  @override
  String youReceived(Object amount) {
    return 'Вы получили $amount Fuelz';
  }

  @override
  String youFilledUp(Object station) {
    return 'Вы заправили свой автомобиль на станции $station...';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get takePicture => 'Сделать фото';

  @override
  String get choosePicture => 'Выбрать фото';

  @override
  String get delete => 'Удалить';

  @override
  String get save => 'Сохранить';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успех';

  @override
  String get warning => 'Предупреждение';

  @override
  String get info => 'Информация';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get ok => 'ОК';

  @override
  String get close => 'Закрыть';

  @override
  String get retry => 'Повторить';

  @override
  String get submit => 'Отправить';

  @override
  String get done => 'Готово';

  @override
  String get skip => 'Пропустить';

  @override
  String get continueTitle => 'Продолжить';

  @override
  String get back => 'Назад';

  @override
  String get edit => 'Редактировать';

  @override
  String get update => 'Обновить';

  @override
  String get remove => 'Удалить';

  @override
  String get share => 'Поделиться';

  @override
  String get copy => 'Копировать';

  @override
  String get paste => 'Вставить';

  @override
  String get selectAll => 'Выбрать все';

  @override
  String get clear => 'Очистить';

  @override
  String get reset => 'Сбросить';

  @override
  String get refresh => 'Обновить';

  @override
  String get more => 'Больше';

  @override
  String get less => 'Меньше';

  @override
  String get showMore => 'Показать больше';

  @override
  String get showLess => 'Показать меньше';

  @override
  String get seeAll => 'Посмотреть все';

  @override
  String get collapse => 'Свернуть';

  @override
  String get expand => 'Развернуть';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get tomorrow => 'Завтра';

  @override
  String get now => 'Сейчас';

  @override
  String get later => 'Позже';

  @override
  String get soon => 'Скоро';

  @override
  String get never => 'Никогда';

  @override
  String get always => 'Всегда';

  @override
  String get sometimes => 'Иногда';

  @override
  String get daily => 'Ежедневно';

  @override
  String get weekly => 'Еженедельно';

  @override
  String get monthly => 'Ежемесячно';

  @override
  String get yearly => 'Ежегодно';

  @override
  String get euro3 => 'Евро 3';

  @override
  String get autoDiesel => 'Авто дизель';

  @override
  String get superDiesel => 'Супер дизель';

  @override
  String get petrol95 => 'Бензин 95';

  @override
  String get petrol92 => 'Бензин 92';

  @override
  String get extraMile => 'Экстра миля';
}
