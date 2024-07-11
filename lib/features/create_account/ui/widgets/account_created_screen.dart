import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 16.h,
      left: 300.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(60),
            const Align(
              alignment: Alignment.topRight,
              child: BackArrow(),
            ),
            const Spacer(),
            SizedBox(
              height: 290.h,
              child: Image.asset('assets/images/cups.png'),
            ),
            verticalSpace(20),
            Text('تم انشاء الحساب بنجاح', style: AppStyles.font22lightPrimary700),
            verticalSpace(5),
            Text('يمكنك تصفح التطبيق الان مع احدث العروض والخصومات', style: AppStyles.font12primary400),
            const Spacer(flex: 2),
            AppBrownTextButton(
              text: 'البدء الان',
              onTap: () {
                context.pushNamedAndRemoveUntil(
                  Routes.signIn,
                  predicate: (context) => false,
                );
              },
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
