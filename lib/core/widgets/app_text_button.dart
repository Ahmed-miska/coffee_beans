import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBrownTextButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const AppBrownTextButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppColors.lighterBrown,
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.font16white500,
          ),
        ),
      ),
    );
  }
}
