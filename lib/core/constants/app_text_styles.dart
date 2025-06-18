import 'package:flutter/material.dart';
import 'package:wallet/core/utils/extensions/color_extensions.dart';

import 'app_colors.dart';

class AppTextStyles {
  // Private constructor - singleton pattern uchun
  AppTextStyles._();

  // Base font family - loyihada ishlatiladigan asosiy font
  static const String _fontFamilyRegular = 'Gilroy-Regular';
  static const String _fontFamilyMedium = 'Gilroy-Medium';
  static const String _fontFamilySemiBold = 'Gilroy-SemiBold';
  static const String _fontFamilyBold = 'Gilroy-bold';
  static const String _fontFamilyExtraBold = 'Gilroy-ExtraBold';
  static const String _fontFamilyHeavy = 'Gilroy-Heavy';

  // ===============================================
  // HEADING STYLES (Sarlavhalar uchun)
  // ===============================================

  /// Eng katta sarlavha - 24px, weight 700
  static const TextStyle heading1Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: _fontFamilyBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0, // line height
    // height: 1.2, // line height
  );

  /// Katta sarlavha - 24px, weight 600
  static const TextStyle heading1SemiBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.2,
  );

  /// O'rta sarlavha - 20px, weight 700
  static const TextStyle heading2SemiBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    // height: 1.2, // line height
    letterSpacing: 0,
  );

  /// O'rta sarlavha - 20px, weight 700
  static const TextStyle heading2Medium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyMedium,
    color: AppColors.textPrimary,
    height: 1.0,
    // height: 1.2, // line height
    letterSpacing: 0,
  );

  /// O'rta sarlavha - 20px, weight 600
  static const TextStyle heading2Regular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamilyRegular,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.2,
  );

  // ===============================================
  // BODY STYLES (Asosiy matn uchun)
  // ===============================================

  /// Asosiy matn - 18px, weight 600 (qalinroq)
  static const TextStyle bodyLargeSemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// Asosiy matn - 18px, weight 600 (qalinroq)
  static const TextStyle bodyLargeMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyMedium,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// Asosiy matn - 18px, weight 400 (oddiy)
  static const TextStyle bodyLargeRegular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamilyRegular,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// O'rta matn - 16px, weight 600 (qalinroq)
  static const TextStyle bodyMediumSemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// O'rta matn - 16px, weight 600 (qalinroq)
  static const TextStyle bodyMediumMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyMedium,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// O'rta matn - 16px, weight 400 (oddiy)
  static const TextStyle bodyMediumRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamilyRegular,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// Kichik matn - 14px, weight 600 (qalinroq)
  static const TextStyle bodySmallSemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// Kichik matn - 14px, weight 600 (qalinroq)
  static const TextStyle bodySmallMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyMedium,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  /// Kichik matn - 14px, weight 400 (oddiy)
  static const TextStyle bodySmallRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamilyRegular,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.4,
  );

  // ===============================================
  // CAPTION STYLES (Yozuv va yorliq uchun)
  // ===============================================

  /// Juda kichik matn - 12px, weight 600
  static const TextStyle captionSemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.3,
  );

  /// Juda kichik matn - 12px, weight 600
  static const TextStyle captionMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyMedium,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.3,
  );

  /// Juda kichik matn - 12px, weight 400
  static const TextStyle captionRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamilyRegular,
    color: AppColors.textPrimary,
    height: 1.0,
    letterSpacing: 0,
    // height: 1.3,
  );

  // ===============================================
  // BUTTON STYLES (Tugmalar uchun)
  // ===============================================

  /// Katta tugma matni - 16px, weight 600
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    // height: 1.2,
    letterSpacing: 0.1,
  );

  /// O'rta tugma matni - 14px, weight 600
  static const TextStyle buttonMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    // height: 1.2,
    letterSpacing: 0.1,
  );

  /// Kichik tugma matni - 12px, weight 600
  static const TextStyle buttonSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamilySemiBold,
    color: AppColors.textPrimary,
    height: 1.0,
    // height: 1.2,
    letterSpacing: 0.1,
  );

  // ===============================================
  // HELPER METHODS (Rang qo'shish uchun)
  // ===============================================

  /// Har qanday TextStyle'ga rang qo'shish
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// Har qanday TextStyle'ga opacity qo'shish
  static TextStyle withOpacity(TextStyle style, double opacity) {
    return style.copyWith(color: style.color?.withAlpha(opacity.toAlpha));
  }

  /// Har qanday TextStyle'ga decoration qo'shish (masalan, underline)
  static TextStyle withDecoration(TextStyle style, TextDecoration decoration) {
    return style.copyWith(decoration: decoration);
  }
}

// ===============================================
// EXTENSION (Qo'shimcha imkoniyatlar)
// ===============================================

extension AppTextStylesExtension on TextStyle {
  /// Rangni o'zgartirish
  TextStyle withColor(Color color) => copyWith(color: color);

  /// Opacity qo'shish
  TextStyle withOpacity(double opacity) =>
      copyWith(color: color?.withAlpha(opacity.toAlpha));

  /// Bold qilish
  TextStyle bold() => copyWith(fontWeight: FontWeight.bold);

  /// Underline qo'shish
  TextStyle underline() => copyWith(decoration: TextDecoration.underline);

  /// Italic qilish
  TextStyle italic() => copyWith(fontStyle: FontStyle.italic);
}
