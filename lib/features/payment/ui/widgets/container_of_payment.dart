import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/my_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContainerOfPayment extends StatelessWidget {
  const ContainerOfPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: const Color(0xff000000).withOpacity(.25), blurRadius: 25, spreadRadius: 0, offset: const Offset(0, 15)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Text('المحفظة', style: AppStyles.font22lightPrimary700),
              const Spacer(),
              Icon(Icons.radio_button_checked, color: AppColors.lightPrimary, size: 22.sp),
            ],
          ),
          verticalSpace(15),
          const MySeparator(),
          verticalSpace(15),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(AppAssets.walletAdd),
                  verticalSpace(10),
                  Text('شحن رصيد', style: AppStyles.font14lightPrimary400),
                ],
              ),
              const Spacer(),
              Text('جنيه  ', style: AppStyles.font12primary400),
              Text('80.00', style: AppStyles.font22lightPrimary700),
              Text(' : رصيدك الحالي', style: AppStyles.font18white500.copyWith(color: AppColors.primary)),
            ],
          )
        ],
      ),
    );
  }
}
