import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_styles.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'وصف الكافيه',
          style: AppStyles.font16white500.copyWith(
            color: AppColors.primary,
          ),
        ),
        Text(
          'كافيه ومطعم في دمياط الجديدة في المنطقة المركزية يقدم جميع انواع القهوة والحلوى يمكنك الجلوس فيه مع الاصدقاء او في الحفلات او مناسبات او حتى للعمل',
          style: AppStyles.font16lightPrimary500,
          textAlign: TextAlign.right,
        ),
        verticalSpace(17),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primary.withAlpha(50),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '26 يونيو 2024',
                          style: AppStyles.font14primary400,
                        ),
                        const StarRating(),
                      ],
                    ),
                    const Spacer(),
                    Text('محمد احمد', style: AppStyles.font18white500),
                    horizontalSpace(12),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(AppAssets.girl),
                    ),
                  ],
                ),
                verticalSpace(15),
                Text(
                  'كافيه رائع جدا وخدمه على اعلى مستوي , مكان رائع جودة واسعار',
                  style: AppStyles.font16lightPrimary400,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
        ),
        verticalSpace(17),
        Row(
          children: [
            Text('جـ / الساعة', style: AppStyles.font16lightPrimary500),
            horizontalSpace(5),
            Text('30.00', style: AppStyles.font28white800),
            horizontalSpace(20),
            Expanded(child: AppBrownTextButton(text: 'احجز الان', onTap: () {})),
          ],
        )
      ],
    );
  }
}
