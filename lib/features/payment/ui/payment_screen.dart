import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/features/payment/ui/widgets/container_of_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../splash/ui/widgets/shadow_container.dart';
import 'widgets/payment_way.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 483.h,
            left: 195.w,
            child: ShadowContainer(
              color: AppColors.lightPrimary.withOpacity(.1),
            ),
          ),
          Positioned(
            top: 365.h,
            left: 15.w,
            child: ShadowContainer(
              color: const Color(0xffE82105).withOpacity(.2),
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
                const ContainerOfPayment(),
                verticalSpace(18),
                Center(child: Text('او من خلال', style: AppStyles.font16lightPrimary500)),
                verticalSpace(30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PaymentWay(
                      text: 'فودافون كاش',
                      color: Colors.red,
                      icon: 'assets/images/vodafone.png',
                    ),
                    PaymentWay(
                      text: 'الفيزا',
                      color: AppColors.stars,
                      icon: 'assets/images/visa.png',
                    ),
                  ],
                ),
                const Spacer(),
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
