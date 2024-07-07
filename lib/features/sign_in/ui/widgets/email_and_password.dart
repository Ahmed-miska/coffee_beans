import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'البريد الالكتروني',
          style: AppStyles.font20lighterBrown700,
        ),
        verticalSpace(16),
        AppTextFormField(
          prefixIcon: Icon(
            Icons.alternate_email,
            size: 24.sp,
            color: AppColors.lightBrown,
          ),
          hintText: '.. ادخل بريدك الالكتروني',
          validator: (value) {
            // ignore: unnecessary_null_comparison
            if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
              return 'البريد الالكتروني غير صالح';
            }
          },
        ),
        verticalSpace(24),
        Text(
          'كلمة المرور',
          style: AppStyles.font20lighterBrown700,
        ),
        verticalSpace(16),
        AppTextFormField(
          prefixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            child: Icon(
              isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              size: 24.sp,
              color: AppColors.lightBrown,
            ),
          ),
          hintText: 'ادخل كلمة المرور الخاصه بك',
          isObscureText: isObscure,
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
