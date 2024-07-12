import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrinksListViewItem extends StatelessWidget {
  const DrinksListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.darkGrey.withAlpha(100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        child: Row(
          children: [
            Text('X1', style: AppStyles.font12primary400),
            const Spacer(),
            Column(
              children: [
                Text('ايس موكا', style: AppStyles.font16lightPrimary500),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '30.00',
                        style: AppStyles.font22lightPrimary700.copyWith(color: Colors.white),
                      ),
                      TextSpan(
                        text: '  جنيه',
                        style: AppStyles.font12primary400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            horizontalSpace(10),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(AppAssets.cofeCups),
            ),
          ],
        ),
      ),
    );
  }
}
