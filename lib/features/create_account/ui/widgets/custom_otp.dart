import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOtp extends StatelessWidget {
  const CustomOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 60.w,
      fieldHeight: 60.w,
      numberOfFields: 4,
      keyboardType: TextInputType.number,
      textStyle: AppStyles.font30white400,
      disabledBorderColor: AppColors.lightPrimary,
      enabledBorderColor: AppColors.primary,
      focusedBorderColor: AppColors.lightPrimary,
      borderColor: AppColors.lightPrimary,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      borderRadius: BorderRadius.circular(5),
      showCursor: false,
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: (String verificationCode) {},
    );
  }
}
