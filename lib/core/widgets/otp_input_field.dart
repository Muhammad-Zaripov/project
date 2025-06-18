import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:wallet/core/constants/app_radius.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import '../constants/app_text_styles.dart';
import '../localization/generated/app_localizations.dart';

class OtpInputField extends StatefulWidget {
  const OtpInputField({
    super.key,
    required this.phoneNumber,
    required this.onPressedResend,
    this.onCompleted,
    this.onChanged,
    required this.formKey,
    required this.validator,
  });

  final String phoneNumber;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onCompleted;
  final FormFieldValidator<String?> validator;
  final VoidCallback? onPressedResend;
  final GlobalKey<FormState> formKey;

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  late final TextEditingController pinController;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    pinController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 44,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.semiMedium),
        border: Border.all(color: AppColors.grey),
      ),
    );

    final l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(l10n.enterSixDigitCode, style: AppTextStyles.bodyLargeRegular),
        SizedBox(height: AppSpacing.spacingXs),
        Text(
          widget.phoneNumber,
          style: AppTextStyles.bodyLargeRegular.withColor(
            AppColors.primaryBlue,
          ),
        ),
        SizedBox(height: AppSpacing.spacing2xl),
        Pinput(
          length: 6,
          controller: pinController,
          focusNode: focusNode,
          defaultPinTheme: defaultPinTheme,
          pinputAutovalidateMode: PinputAutovalidateMode.disabled,
          separatorBuilder: (index) => const SizedBox(width: 8),
          validator: widget.validator,
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onCompleted: widget.onCompleted,
          onChanged: widget.onChanged,
          cursor: SizedBox(),
          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: defaultPinTheme.decoration!.copyWith(
              borderRadius: BorderRadius.circular(AppRadius.semiMedium),
              border: Border.all(color: AppColors.primaryBlue),
            ),
          ),
          errorBuilder: (errorText, pin) => SizedBox(),
          errorPinTheme: defaultPinTheme.copyBorderWith(
            border: Border.all(color: Colors.redAccent),
          ),
        ),
        SizedBox(height: AppSpacing.spacing3xl),
        Text(l10n.didntReceiveCode, style: AppTextStyles.bodyLargeRegular),
        SizedBox(height: AppSpacing.spacingM),
        GestureDetector(
          onTap: widget.onPressedResend,
          child: Text(
            l10n.resendCode,
            style: AppTextStyles.bodyLargeRegular.withColor(
              AppColors.primaryBlue,
            ),
          ),
        ),
      ],
    );
  }
}
