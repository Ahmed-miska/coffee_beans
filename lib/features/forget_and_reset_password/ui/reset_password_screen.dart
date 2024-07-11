import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:coffee_beans/core/widgets/pass_and_confarm_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/app_styles.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isObscure1 = true;
  bool isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 266.h,
      left: 309.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(60),
             const BackArrow(),
              verticalSpace(25),
              Text('انشاء كلمة مرور جديده', style: AppStyles.font22lightPrimary700),
              verticalSpace(12),
              Text('ادخل كلمة المرور الجديدة', style: AppStyles.font12primary400),
              verticalSpace(25),
              const PassAndConfarmPass(),
              verticalSpace(50),
              AppBrownTextButton(
                text: 'حفظ',
                onTap: () {
                  context.pushNamedAndRemoveUntil(Routes.signIn, predicate: (context) => false);
                },
              ),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
