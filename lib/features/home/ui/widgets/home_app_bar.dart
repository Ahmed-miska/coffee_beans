import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/my_separator.dart';
import 'package:coffee_beans/features/home/ui/widgets/container_of_icon_and_text_home.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      width: 360.w,
      //   height: 150.h,
      decoration: BoxDecoration(
        color: AppColors.darkPrimary,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: const Color(0xff000000).withOpacity(.25), blurRadius: 25, spreadRadius: 0, offset: const Offset(0, 15)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('جنيه', style: AppStyles.font14primary400),
              Text(' ', style: AppStyles.font20lightPrimary700),
              Text('240.00', style: AppStyles.font20lightPrimary700),
              const Spacer(),
              Text('رصيدك الحالي', style: AppStyles.font20primary700),
            ],
          ),
          verticalSpace(15),
          const MySeparator(),
          verticalSpace(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContainerOfIconAndTextHome(icon: AppAssets.clock, text: 'الحجوزات'),
              ContainerOfIconAndTextHome(icon: AppAssets.discountShape, text: 'العروض'),
              ContainerOfIconAndTextHome(icon: AppAssets.walletEmpty, text: 'المحفظة'),
              ContainerOfIconAndTextHome(icon: AppAssets.walletAdd, text: 'شحن رصيد'),
            ],
          )
        ],
      ),
    );
  }
}
