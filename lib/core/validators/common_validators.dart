import 'app_validator.dart';

class CommonValidators {
  CommonValidators._();

  /// Ism uchun validator (required + letters only)
  static String? Function(String?) get name => AppValidators.combine([
    AppValidators.required,
    AppValidators.lettersOnly,
    AppValidators.minLength(2),
  ]);

  /// Email uchun to'liq validator
  static String? Function(String?) get requiredEmail => AppValidators.combine([
    AppValidators.required,
    AppValidators.email,
  ]);

  /// Telefon uchun to'liq validator
  static String? Function(String?) get requiredPhone => AppValidators.combine([
    AppValidators.required,
    AppValidators.phone,
  ]);

  /// Kuchli parol uchun validator
  static String? Function(String?) get strongPassword => AppValidators.combine([
    AppValidators.required,
    AppValidators.password,
  ]);

  /// Oddiy parol uchun validator
  static String? Function(String?) get basicPassword => AppValidators.combine([
    AppValidators.required,
    AppValidators.simplePassword,
  ]);
}