import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardItem extends StatelessWidget {
  final String image, title, subTitle;
  final int index;
  const BoardItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 844.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: AppStyles.font28white800,
              textAlign: TextAlign.end,
            ),
            verticalSpace(19),
            Text(
              subTitle,
              style: AppStyles.font18white500,
              textAlign: TextAlign.end,
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 95.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: index == 0 ? AppColors.lightPrimary : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 95.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: index == 1 ? AppColors.lightPrimary : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 95.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: index == 2 ? AppColors.lightPrimary : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            verticalSpace(80),
          ],
        ),
      ),
    );
  }
}
