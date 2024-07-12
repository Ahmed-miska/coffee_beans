import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/features/cafe_details/widgets/row_of_people.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CafeDetailsOne extends StatelessWidget {
  const CafeDetailsOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.myanoPlace),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(60),
              const BackArrow(),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.lightPrimary.withAlpha(100),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('مايانو', style: AppStyles.font28white800),
                      verticalSpace(8),
                      Row(
                        children: [
                          const Spacer(),
                          Text('دمياط الجديدة - المنطقة المركزية', style: AppStyles.font12white400),
                          horizontalSpace(5),
                          const Icon(Icons.location_on_outlined, color: Colors.white),
                        ],
                      ),
                      verticalSpace(8),
                      const RowOfPeople(),
                      verticalSpace(15),
                      Divider(
                        thickness: 2.5,
                        color: Colors.white.withOpacity(.35),
                      ),
                      verticalSpace(15),
                      Text(
                        'كافيه ومطعم في دمياط الجديدة في المنطقة المركزية يقدم جميع انواع القهوة والحلوى يمكنك الجلوس فيه مع الاصدقاء او في الحفلات او مناسبات او حتى للعمل',
                        style: AppStyles.font16white500,
                        textAlign: TextAlign.right,
                      )
                    ],
                  ),
                ),
              ),
              verticalSpace(21),
              AppBrownTextButton(
                  text: 'احجز الان',
                  onTap: () {
                    context.pushNamed(Routes.coffeeDetailsTwo);
                  }),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
