import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameTextField extends StatelessWidget {
  final String name;
  const NameTextField({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      child: Form(
        child: TextFormField(
          textAlign: TextAlign.end,
          //controller: controller,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
            enabledBorder: OutlineInputBorder(
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
            hintStyle: AppStyles.font14primary400,
            hintText: name,
          ),

          style: AppStyles.font20lightPrimary700,
        ),
      ),
    );
  }
}
