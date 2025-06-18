import 'package:flutter/services.dart';

enum Country { uzbekistan, sriLanka }

/// Formatter that:
/// - Preserves a single leading '+' or '0', otherwise no prefix
/// - Applies country-specific grouping
/// - Enforces max-length to avoid overflow
class PhoneNumberFormatter extends TextInputFormatter {
  final Country country;

  PhoneNumberFormatter({this.country = Country.sriLanka});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;
    String raw = text;

    // Detect explicit prefix
    bool hasPlus = raw.startsWith('+');
    bool hasTrunk = !hasPlus && raw.startsWith('0');

    // Strip the leading '+' or '0' for digit extraction
    if (hasPlus || hasTrunk) {
      raw = raw.substring(1);
    }

    // Remove all non-digit characters
    final digits = raw.replaceAll(RegExp(r'[^0-9]'), '');

    // Country grouping settings (digits only)
    late final List<int> groupSizes;
    switch (country) {
      case Country.uzbekistan:
        groupSizes = [2, 3, 2, 2];
        break;
      case Country.sriLanka:
        !hasPlus
            ? hasTrunk
                  ? groupSizes = [2, 7]
                  : groupSizes = [0, 2, 7]
            : groupSizes = [2, 2, 7];
        break;
    }

    // Prevent overflow
    final maxDigits = groupSizes.fold<int>(0, (a, b) => a + b);
    if (digits.length > maxDigits) {
      return oldValue;
    }

    // Build segments: single '+' or '0' prefix only
    final segments = <String>[];
    if (hasPlus) {
      segments.add('+');
    } else if (hasTrunk) {
      segments.add('0');
    }

    // Append digit groups
    int pos = 0;
    for (var size in groupSizes) {
      if (pos >= digits.length) break;
      final end = (pos + size <= digits.length) ? pos + size : digits.length;
      segments.add(digits.substring(pos, end));
      pos = end;
    }

    print("SEGMENT::: ${segments.toString()}");
    String formatted = segments.join(' ');
    print("FORMATED::: ${formatted.toString()}");

    formatted = formatted.replaceFirst(" ", "");
    print("FORMATED2::: ${formatted.toString()}");

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

// Usage:
// TextField(inputFormatters: [PhoneNumberFormatter(country: Country.uzbekistan)]);
// TextField(inputFormatters: [PhoneNumberFormatter(country: Country.sriLanka)]);

// Usage examples:
// TextField(
//   inputFormatters: [PhoneNumberFormatter(country: Country.uzbekistan)],
// );
// TextField(
//   inputFormatters: [PhoneNumberFormatter(country: Country.sriLanka)],
// );

/*
import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length > 9) {
      return oldValue;
    }

    final buffer = StringBuffer();
    for (int i = 0; i < digitsOnly.length; i++) {
      if (i == 2 || i == 5 || i == 7) {
        buffer.write(' ');
      }
      buffer.write(digitsOnly[i]);
    }

    final formatted = buffer.toString();
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
*/
