import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_form_field.dart';

class PassAndConfarmPass extends StatefulWidget {
  const PassAndConfarmPass({super.key});

  @override
  State<PassAndConfarmPass> createState() => _PassAndConfarmPassState();
}

class _PassAndConfarmPassState extends State<PassAndConfarmPass> {
  bool isObscure1 = true;
  bool isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('كلمة المرور', style: AppStyles.font20lightPrimary700),
        verticalSpace(16),
        AppTextFormField(
          prefixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscure1 = !isObscure1;
              });
            },
            child: Icon(
              isObscure1 ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              size: 24.sp,
              color: AppColors.primary,
            ),
          ),
          hintText: 'ادخل كلمة المرور الجديدة',
          isObscureText: isObscure1,
          validator: (value) {
            // ignore: unnecessary_null_comparison
            if (value == null || value.isEmpty) {
              return 'كلمة المرور مطلوبه';
            }
          },
        ),
        verticalSpace(25),
        Text('تاكيد كلمة المرور', style: AppStyles.font20lightPrimary700),
        verticalSpace(16),
        AppTextFormField(
          prefixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscure2 = !isObscure2;
              });
            },
            child: Icon(
              isObscure2 ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              size: 24.sp,
              color: AppColors.primary,
            ),
          ),
          hintText: 'اعد ادخال كلمة المرور مرة اخرى',
          isObscureText: isObscure2,
          validator: (value) {
            // ignore: unnecessary_null_comparison
            if (value == null || value.isEmpty) {
              return 'كلمة المرور مطلوبه';
            }
          },
        ),
      ],
    );
  }
}
