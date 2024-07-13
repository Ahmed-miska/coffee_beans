import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/search_app_bar.dart';
import 'package:coffee_beans/features/cafe_details/widgets/drinks_list_view_item.dart';
import 'package:coffee_beans/features/splash/ui/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 161.h,
            left: 4.w,
            child: ShadowContainer(
              color: AppColors.lightPrimary.withOpacity(.1),
            ),
          ),
          Positioned(
            top: 415.h,
            left: 195.w,
            child: ShadowContainer(
              color: Color(0xffE82105).withOpacity(.2),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                verticalSpace(66),
                const BackArrow(),
                verticalSpace(25),
                Row(
                  children: [
                    const Icon(Icons.more_vert, color: AppColors.lightPrimary),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('مكان التوصيل', style: AppStyles.font14primary400),
                        Text('ش الصعيدي - دمياط الجديدة', style: AppStyles.font16white500),
                      ],
                    ),
                    horizontalSpace(10),
                    const Icon(Icons.location_on_outlined, color: AppColors.lightPrimary),
                  ],
                ),
                verticalSpace(16),
                const SearchAppBar(),
                verticalSpace(24),
                Text('الطلبات', style: AppStyles.font22lightPrimary700),
                verticalSpace(18),
                SizedBox(
                  height: 260.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: const DrinksListViewItem(),
                      );
                    },
                  ),
                ),
                verticalSpace(17),
                Text('تفاصيل الفاتورة', style: AppStyles.font22lightPrimary700),
                verticalSpace(14),
                Row(
                  children: [
                    Text('جنيه  ', style: AppStyles.font12primary400),
                    Text('60.00', style: AppStyles.font16white500),
                    const Spacer(),
                    Text('اجمالي الطلب', style: AppStyles.font16white500.copyWith(color: AppColors.primary))
                  ],
                ),
                verticalSpace(12),
                Row(
                  children: [
                    Text('جنيه  ', style: AppStyles.font12primary400),
                    Text('20.00', style: AppStyles.font16white500),
                    const Spacer(),
                    Text('خدمة التوصيل', style: AppStyles.font16white500.copyWith(color: AppColors.primary))
                  ],
                ),
                verticalSpace(12),
                Row(
                  children: [
                    Text('جنيه  ', style: AppStyles.font12primary400),
                    Text('80.00', style: AppStyles.font20lightPrimary700),
                    const Spacer(),
                    Text('الاجمالي', style: AppStyles.font18white500.copyWith(color: AppColors.lightPrimary, fontWeight: FontWeight.w700))
                  ],
                ),
                Spacer(),
                AppBrownTextButton(text: 'اطلب الان', onTap: () {}),
                verticalSpace(35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
