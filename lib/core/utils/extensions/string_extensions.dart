

extension StringValidatorExtension on String? {
  /// Bo'shligini tekshirish
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;

  /// Email formatini tekshirish
  bool get isValidEmail {
    if (isNullOrEmpty) return false;
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(this!);
  }

  /// Telefon formatini tekshirish
  bool get isValidPhone {
    if (isNullOrEmpty) return false;
    final cleanPhone = this!.replaceAll(RegExp(r'[^\d+]'), '');
    return cleanPhone.length >= 10 && cleanPhone.length <= 15;
  }

  /// Faqat raqamlar ekanligini tekshirish
  bool get isNumeric {
    if (isNullOrEmpty) return false;
    return RegExp(r'^[0-9]+$').hasMatch(this!);
  }
}
