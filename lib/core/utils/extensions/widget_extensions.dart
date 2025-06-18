import 'package:flutter/widgets.dart';

/// WidgetPaddingExtension — barcha Widget’larga padding qo‘shish uchun extension.
/// DRY va KISS tamoyillariga amal qilib, turli turdagi padding funksiyalarini bitta joyda to‘pladik.
extension WidgetPaddingExtension on Widget {
  /// Hammasiga bir xil padding qo‘shadi.
  Widget paddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  /// Vertikal va gorizontal bo‘ylab padding qo‘shadi.
  Widget paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }

  /// LTRB bo‘yicha alohida padding berish imkoniyati.
  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  /// Faqat gorizontal (chap-o‘ng) padding.
  Widget paddingHorizontal(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  /// Faqat vertikal (yuqori-past) padding.
  Widget paddingVertical(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }
}
