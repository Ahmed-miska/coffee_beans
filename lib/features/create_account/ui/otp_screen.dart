import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:coffee_beans/features/create_account/ui/widgets/custom_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_styles.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 217.h,
      left: 309.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace(60),
           const BackArrow(),
            verticalSpace(25),
            Text('انشاء حساب جديد', style: AppStyles.font22lightPrimary700),
            verticalSpace(12),
            Text('ادخل الرمز التعريفي المرسل الى رقم هاتفك', style: AppStyles.font12primary400),
            verticalSpace(25),
            const CustomOtp(),
            verticalSpace(16),
            Row(
              children: [
                Text('2:49', style: AppStyles.font14lightPrimary700),
                const Spacer(),
                Text('اعادة ارسال الرمز', style: AppStyles.font12primary400),
              ],
            ),
            verticalSpace(50),
            AppBrownTextButton(
              text: 'ارسال',
              onTap: () {
                context.pushNamed(Routes.accountCreated);
              },
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
