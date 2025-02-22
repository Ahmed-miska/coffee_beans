import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contantPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String) validator;
  final TextEditingController? controller;
  const AppTextFormField({
    super.key,
    this.contantPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.prefixIcon,
    this.backgroundColor,
    required this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.end,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contantPadding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primary, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintStyle ?? AppStyles.font14primary400,
        hintText: hintText,
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: prefixIcon,
        ),
      ),
      obscureText: isObscureText ?? false,
      style: hintStyle ?? AppStyles.font20lightPrimary700,
      validator: (value) {
        return validator(value!);
      },
    );
  }
}
