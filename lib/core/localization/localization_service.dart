import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationService {
  static const String _languageKey = 'selected_language';

  // Supported locales
  static const List<Locale> supportedLocales = [
    Locale('en'),         // English
    Locale('ru'),         // Russian
    Locale('uz'),   // Uzbek (Latin)
    // Locale('uz', 'Latn'),   // Uzbek (Latin)
    Locale('cy'), // Uzbek (Cyrillic)
    // Locale('cy', 'Cyrl'), // Uzbek (Cyrillic)
    Locale('tg'),         // Tajik
    Locale('ur'),         // Urdu (Pakistan)
    Locale('si'),         // Sinhala (Sri Lanka)
    Locale('ta'),         // Tamil (Sri Lanka)
  ];

  // Language display names
  static const Map<String, String> languageNames = {
    'en': 'English',
    'ru': 'Русский',
    'uz': 'O\'zbek',
    'cy': 'Ўзбек',
    'tg': 'Тоҷикӣ',
    'ur': 'اردو',
    'si': 'සිංහල',
    'ta': 'தமிழ்',
  };
  /*static const Map<String, String> languageNames = {
    'en': 'English',
    'ru': 'Русский',
    'uz_Latn': 'O\'zbek',
    'uz_Cyrl': 'Ўзбек',
    'tg': 'Тоҷикӣ',
    'ur': 'اردو',
    'si': 'සිංහල',
    'ta': 'தமிழ்',
  };
  */

  // Get saved locale
  static Future<Locale?> getSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_languageKey);

    if (languageCode == null) return null;

    // Handle special cases for Uzbek
    /*if (languageCode == 'uz_Latn') {
      return const Locale('uz', 'Latn');
    } else if (languageCode == 'uz_Cyrl') {
      return const Locale('uz', 'Cyrl');
    }*/

    return Locale(languageCode);
  }

  // Save selected locale
  static Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();

    // Handle special cases for Uzbek
    String languageCode;
    /*if (locale.languageCode == 'uz') {
      languageCode = locale.countryCode == 'Cyrl' ? 'uz_Cyrl' : 'uz_UZ';
    } else {
      languageCode = locale.languageCode;
    }*/
      languageCode = locale.languageCode;

    await prefs.setString(_languageKey, languageCode);
  }

  // Get locale string for display
  static String getLocaleString(Locale locale) {
    // if (locale.languageCode == 'uz') {
    //   return locale.countryCode == 'Cyrl' ? 'uz_Cyrl' : 'uz_UZ';
    // }
    return locale.languageCode;
  }

  // Get language display name
  static String getLanguageName(Locale locale) {
    final localeString = getLocaleString(locale);
    return languageNames[localeString] ?? locale.languageCode;
  }

  // Check if locale is supported
  static bool isSupported(Locale locale) {
    return supportedLocales.any((supportedLocale) =>
    supportedLocale.languageCode == locale.languageCode &&
        supportedLocale.countryCode == locale.countryCode);
  }

  // Get default locale (English)
  static Locale get defaultLocale => const Locale('en');
}