import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';
import '../../utils/helpers/phone_number_formatter.dart';
import '../../validators/app_validator.dart';

enum AppTextFieldType {
  text,
  email,
  phone,
  password,
  number,
  nationalId,
  accountNumber,
  referralCode,
}

class AppTextField extends StatefulWidget {
  final String label;
  final String? hintText;
  final bool isRequired;
  final AppTextFieldType type;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final bool enabled;
  final bool readOnly;
  final bool isEnabledLabel;
  final int? maxLength;
  final int maxLines;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final EdgeInsets? contentPadding;
  final String? initialValue;

  const AppTextField({
    super.key,
    required this.label,
    this.hintText,
    this.isRequired = false,
    this.type = AppTextFieldType.text,
    this.controller,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.enabled = true,
    this.readOnly = false,
    this.isEnabledLabel = true,
    this.maxLength,
    this.maxLines = 1,
    this.textInputAction,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.contentPadding,
    this.initialValue,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isEnabledLabel) _buildLabel(),
        if (widget.isEnabledLabel)
          const SizedBox(height: AppSpacing.spacingS), // 8px
        _buildTextField(),
      ],
    );
  }

  Widget _buildLabel() {
    return RichText(
      text: TextSpan(
        text: widget.label,
        style: AppTextStyles.bodyLargeMedium.copyWith(
          fontWeight: FontWeight.w400,
        ),
        children: [
          if (!widget.isRequired)
            TextSpan(
              text: ' (Optional)',
              style: AppTextStyles.bodyLargeMedium.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      initialValue: widget.initialValue,
      style: AppTextStyles.bodyLargeRegular.withColor(AppColors.black),
      decoration: _buildInputDecoration(),
      keyboardType: _getKeyboardType(),
      inputFormatters: _getInputFormatters(),
      validator: widget.validator ?? _getDefaultValidator(),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: AppTextStyles.bodyLargeRegular.withColor(AppColors.grey600),
      contentPadding:
          widget.contentPadding ??
          const EdgeInsets.symmetric(
            horizontal: 24, // sizning spec bo'yicha
            vertical: 17,
          ),
      border: _buildBorder(),
      enabledBorder: _buildBorder(),
      focusedBorder: _buildFocusedBorder(),
      errorBorder: _buildErrorBorder(),
      focusedErrorBorder: _buildErrorBorder(),
      disabledBorder: _buildDisabledBorder(),
      suffixIcon: widget.suffixIcon,
      prefixIcon: widget.prefixIcon,
      filled: true,
      fillColor: AppColors.white,
      counterText: '', // Agar maxLength bo'lsa counter ni yashirish
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.grey, width: 1),
    );
  }

  OutlineInputBorder _buildFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.primaryBlue, width: 1),
    );
  }

  OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.error, width: 1),
    );
  }

  OutlineInputBorder _buildDisabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.medium),
      borderSide: const BorderSide(color: AppColors.grey300, width: 1),
    );
  }

  TextInputType _getKeyboardType() {
    switch (widget.type) {
      case AppTextFieldType.email:
        return TextInputType.emailAddress;
      case AppTextFieldType.phone:
        return TextInputType.phone;
      case AppTextFieldType.number:
      case AppTextFieldType.accountNumber:
      case AppTextFieldType.referralCode:
        return TextInputType.number;
      case AppTextFieldType.nationalId:
        return TextInputType.text;
      case AppTextFieldType.password:
        return TextInputType.visiblePassword;
      default:
        return TextInputType.text;
    }
  }

  List<TextInputFormatter>? _getInputFormatters() {
    switch (widget.type) {
      case AppTextFieldType.phone:
        return [
          PhoneNumberFormatter(),
          /*FilteringTextInputFormatter.allow(RegExp(r'[0-9+\-\s\(\)]'))*/
        ];
      case AppTextFieldType.number:
      case AppTextFieldType.accountNumber:
      case AppTextFieldType.referralCode:
        return [FilteringTextInputFormatter.digitsOnly];
      case AppTextFieldType.nationalId:
        return [FilteringTextInputFormatter.allow(RegExp(r'[0-9A-Za-z]'))];
      default:
        return null;
    }
  }

  String? Function(String?)? _getDefaultValidator() {
    if (!widget.isRequired) return null;

    switch (widget.type) {
      case AppTextFieldType.email:
        return AppValidators.email;
      case AppTextFieldType.phone:
        return AppValidators.phone;
      case AppTextFieldType.nationalId:
        return AppValidators.nationalId;
      case AppTextFieldType.accountNumber:
        return AppValidators.accountNumber;
      default:
        return AppValidators.required;
    }
  }
}
