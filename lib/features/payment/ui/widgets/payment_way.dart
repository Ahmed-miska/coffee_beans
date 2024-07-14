import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentWay extends StatelessWidget {
  final String text, icon;
  final Color color;
  const PaymentWay({super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177.h,
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primary.withOpacity(.3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.radio_button_unchecked_outlined, color: AppColors.darkPrimary, size: 22.sp),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text('الدفع من خلال', style: AppStyles.font20lightPrimary700),
          ),
          Text(text, style: AppStyles.font20lightPrimary700.copyWith(color: color)),
          verticalSpace(15),
          Expanded(child: Image.asset(icon)),
        ],
      ),
    );
  }
}
