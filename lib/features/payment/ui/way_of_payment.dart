import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/app_text_form_field.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/features/splash/ui/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WayOfPayment extends StatelessWidget {
  final bool isVisa;
  const WayOfPayment({super.key, required this.isVisa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 56.h,
              left: 275.w,
              child: ShadowContainer(
                color: isVisa ? const Color(0xFFFFCB44).withOpacity(.1) : const Color(0xFFFF0303).withOpacity(.1),
              ),
            ),
            Positioned(
              top: 595.h,
              left: -54.w,
              child: ShadowContainer(
                color: isVisa ? const Color(0xFFFFCB44).withOpacity(.1) : const Color(0xFFFF0303).withOpacity(.1),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  verticalSpace(60),
                  const BackArrow(),
                  verticalSpace(25),
                  Text('اختر طريقة الدفع', style: AppStyles.font22lightPrimary700),
                  verticalSpace(33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('جنيه  ', style: AppStyles.font12primary400),
                      Text('80.00', style: AppStyles.font22lightPrimary700),
                      horizontalSpace(12),
                      Text('الاجمالي', style: AppStyles.font20lightPrimary700),
                    ],
                  ),
                  verticalSpace(36),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primary.withOpacity(.3),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Image.asset(
                          isVisa ? AppAssets.visa : 'assets/images/vo1.png',
                          height: 30.h,
                        )),
                        horizontalSpace(14),
                        Text(
                          isVisa ? 'الفيزا' : ' فودافون كاش',
                          style: AppStyles.font20lightPrimary700.copyWith(color: isVisa ? AppColors.stars : Colors.red),
                        ),
                        Text(' الدفع من خلال', style: AppStyles.font20lightPrimary700),
                        horizontalSpace(12),
                        Icon(
                          Icons.radio_button_checked,
                          color: AppColors.lightPrimary,
                          size: 22.sp,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(24),
                  Text(isVisa ? 'رقم البطاقه' : 'رقم الهاتف', style: AppStyles.font20lightPrimary700),
                  verticalSpace(10),
                  AppTextFormField(hintText: isVisa ? ' ..ادخل رقم بطاقتك البنكيه' : 'ادخل رقم هاتفك', validator: (value) {}),
                  verticalSpace(35),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('الرقم السري', style: AppStyles.font20lightPrimary700),
                            verticalSpace(10),
                            AppTextFormField(hintText: '****', validator: (value) {}),
                          ],
                        ),
                      ),
                      horizontalSpace(34),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(isVisa ? 'تاريخ الانتهاء' : 'الاسم', style: AppStyles.font20lightPrimary700),
                            verticalSpace(10),
                            AppTextFormField(hintText: isVisa ? '00/00' : 'ادخل الاسم', validator: (value) {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // const Spacer(),
                  verticalSpace(215), AppBrownTextButton(text: 'اطلب الان', onTap: () {}),
                  verticalSpace(35),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
