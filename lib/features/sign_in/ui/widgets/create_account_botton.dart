import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountBotton extends StatelessWidget {
  final Function() onTap;
  const CreateAccountBotton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.lighterBrown, width: 2),
        ),
        child: Center(
          child: Text(
            'انشاء حساب',
            style: AppStyles.font16lighterBrown500,
          ),
        ),
      ),
    );
  }
}
