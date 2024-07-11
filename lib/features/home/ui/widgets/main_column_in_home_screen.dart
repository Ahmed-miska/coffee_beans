import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/features/home/ui/widgets/home_list_view_item.dart';
import 'package:coffee_beans/features/home/ui/widgets/home_list_view_item_two.dart';
import 'package:coffee_beans/features/home/ui/widgets/second_container_in_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainColumnInHomeScreen extends StatelessWidget {
  const MainColumnInHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.darkPrimary,
      child: Column(
        children: [
          verticalSpace(110),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text('عرض المزيد', style: AppStyles.font16lightPrimary500),
                const Spacer(),
                Text('المكافأت', style: AppStyles.font18white500),
              ],
            ),
          ),
          verticalSpace(12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const SecondContainerInHomeScreen(),
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text('عرض المزيد', style: AppStyles.font16lightPrimary500),
                const Spacer(),
                const Icon(Icons.favorite, color: AppColors.lightPrimary),
                horizontalSpace(8),
                Text('الاماكن المفضلة', style: AppStyles.font18white500),
              ],
            ),
          ),
          verticalSpace(10),
          SizedBox(
            height: 300.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const HomeListViewItem(),
              itemCount: 5,
              shrinkWrap: true,
            ),
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text('عرض المزيد', style: AppStyles.font16lightPrimary500),
                const Spacer(),
                Text('الاماكن المشهورة', style: AppStyles.font18white500),
              ],
            ),
          ),
          verticalSpace(10),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(6.h),
              child: const HomeListViewItemTwo(),
            ),
          ),
        ],
      ),
    );
  }
}
