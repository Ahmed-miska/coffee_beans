import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondContainerInHomeScreen extends StatelessWidget {
  const SecondContainerInHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.darkGrey,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(.25),
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: '9', style: AppStyles.font16lightPrimary500),
                TextSpan(text: '/10', style: AppStyles.font16white500),
              ],
            ),
          ),
          horizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('1 كوب قهوة مجانا', style: AppStyles.font16white500),
              Text('اشترى 10 اكواب قهوة واحصل على واحدة مجانا', style: AppStyles.font12primary400),
            ],
          ),
          horizontalSpace(10),
          Expanded(child: Image.asset(AppAssets.cofeCups)),
        ],
      ),
    );
  }
}
