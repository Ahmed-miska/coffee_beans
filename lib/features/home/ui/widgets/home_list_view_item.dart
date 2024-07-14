import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 205.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(AppAssets.myanoPlace),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            Text('مايانو', style: AppStyles.font20white700),
            verticalSpace(8),
            Row(
              children: [
                const Spacer(),
                Text('دمياط الجديدة - المركزية', style: AppStyles.font12white400),
                horizontalSpace(5),
                const Icon(Icons.location_on_outlined, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
