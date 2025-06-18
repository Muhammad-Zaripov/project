class AppValidators {
  AppValidators._();

  // ===============================================
  // BASIC VALIDATORS (Asosiy validatorlar)
  // ===============================================

  /// Bo'sh bo'lmasligi kerak
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  /// Minimal uzunlik
  static String? Function(String?) minLength(int min) {
    return (String? value) {
      if (value == null || value.isEmpty) return null;
      if (value.length < min) {
        return 'Must be at least $min characters';
      }
      return null;
    };
  }

  /// Maksimal uzunlik
  static String? Function(String?) maxLength(int max) {
    return (String? value) {
      if (value == null || value.isEmpty) return null;
      if (value.length > max) {
        return 'Must be no more than $max characters';
      }
      return null;
    };
  }

  // ===============================================
  // EMAIL VALIDATOR
  // ===============================================

  /// Email formati validatsiyasi
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    // Email regex pattern - RFC 2822 standartiga yaqin
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  /// Optional email validator
  static String? optionalEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null; // Optional bo'lgani uchun bo'sh bo'lishi mumkin
    }
    return email(value);
  }

  // ===============================================
  // PHONE VALIDATOR
  // ===============================================

  /// Telefon raqami validatsiyasi
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    final text = value.replaceAll(' ', '');

    if (!((text.startsWith('0') && text.length == 10) ||
        (text.startsWith("+94") && text.length == 12))) {
      return "Example: +94 00 1234567 or 055 1234567";
    }
    return null;
    /*if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    // Telefon raqam uchun faqat raqamlar va ba'zi belgilar
    final cleanPhone = value.replaceAll(RegExp(r'[^\d+]'), '');

    // Minimal uzunlik tekshiruvi (+ belgisi bilan birga)
    if (cleanPhone.length < 10) {
      return 'Phone number is too short';
    }

    // Maksimal uzunlik tekshiruvi
    if (cleanPhone.length > 15) {
      return 'Phone number is too long';
    }

    // O'zbekiston telefon raqamlari uchun (+998 bilan boshlanadi)
    final uzbekistanRegex = RegExp(r'^\+998[0-9]{9}$');
    if (cleanPhone.startsWith('+998')) {
      if (!uzbekistanRegex.hasMatch(cleanPhone)) {
        return 'Please enter a valid Uzbekistan phone number';
      }
    }

    return null;*/
  }

  // ===============================================
  // NATIONAL ID VALIDATOR (O'zbekiston uchun)
  // ===============================================

  /// Milliy ID karta raqami validatsiyasi
  static String? nationalId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'National ID is required';
    }

    final cleanValue = value.trim().toUpperCase();

    // Eski format: 9 raqam + 1 harf (masalan: 123456789A)
    final oldFormatRegex = RegExp(r'^[0-9]{9}[A-Z]$');

    // Yangi format: 14 raqam (masalan: 12345678901234)
    final newFormatRegex = RegExp(r'^[0-9]{14}$');

    if (!oldFormatRegex.hasMatch(cleanValue) && !newFormatRegex.hasMatch(cleanValue)) {
      return 'Please enter a valid National ID (9 digits + letter or 14 digits)';
    }

    return null;
  }

  // ===============================================
  // ACCOUNT NUMBER VALIDATOR
  // ===============================================

  /// Bank hisob raqami validatsiyasi
  static String? accountNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Account number is required';
    }

    final cleanValue = value.replaceAll(RegExp(r'[^\d]'), '');

    // Bank hisob raqami odatda 16-20 raqamdan iborat
    if (cleanValue.length < 10) {
      return 'Account number is too short';
    }

    if (cleanValue.length > 20) {
      return 'Account number is too long';
    }

    // Faqat raqamlar bo'lishi kerak
    if (!RegExp(r'^[0-9]+$').hasMatch(cleanValue)) {
      return 'Account number must contain only digits';
    }

    return null;
  }

  // ===============================================
  // REFERRAL CODE VALIDATOR
  // ===============================================

  /// Referal kod validatsiyasi
  static String? referralCode(String? value) {
    // Optional field, bo'sh bo'lishi mumkin
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final cleanValue = value.trim();

    // Referal kod faqat raqamlar yoki harf+raqamlar bo'lishi mumkin
    if (!RegExp(r'^[A-Za-z0-9]+$').hasMatch(cleanValue)) {
      return 'Referral code can only contain letters and numbers';
    }

    // Uzunlik chegarasi
    if (cleanValue.length < 4) {
      return 'Referral code must be at least 4 characters';
    }

    if (cleanValue.length > 10) {
      return 'Referral code must be no more than 10 characters';
    }

    return null;
  }

  // ===============================================
  // PASSWORD VALIDATOR
  // ===============================================

  /// Parol validatsiyasi
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    // Kamida bitta katta harf
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    // Kamida bitta kichik harf
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    // Kamida bitta raqam
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    return null;
  }

  /// Oddiy parol validatsiyasi (faqat uzunlik)
  static String? simplePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }

  // ===============================================
  // CUSTOM VALIDATORS (Maxsus validatorlar)
  // ===============================================

  /// Parollarni taqqoslash
  static String? Function(String?) confirmPassword(String originalPassword) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Please confirm your password';
      }

      if (value != originalPassword) {
        return 'Passwords do not match';
      }

      return null;
    };
  }

  /// Bir nechta validatorni birlashtirib ishlatish
  static String? Function(String?) combine(List<String? Function(String?)> validators) {
    return (String? value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) {
          return result;
        }
      }
      return null;
    };
  }

  /// Faqat raqamlar
  static String? numbersOnly(String? value) {
    if (value == null || value.isEmpty) return null;

    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Only numbers are allowed';
    }
    return null;
  }

  /// Faqat harflar
  static String? lettersOnly(String? value) {
    if (value == null || value.isEmpty) return null;

    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Only letters are allowed';
    }
    return null;
  }

  /// Faqat harf va raqamlar
  static String? alphanumeric(String? value) {
    if (value == null || value.isEmpty) return null;

    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      return 'Only letters and numbers are allowed';
    }
    return null;
  }
}
