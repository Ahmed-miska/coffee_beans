import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/features/sign_in/ui/widgets/create_account_botton.dart';
import 'package:coffee_beans/features/sign_in/ui/widgets/email_and_password.dart';
import 'package:coffee_beans/features/sign_in/ui/widgets/forget_password_and_remember_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/widgets/background_page.dart';
import 'widgets/other_login_way.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(111),
              SvgPicture.asset(AppAssets.logo),
              verticalSpace(100),
              const EmailAndPassword(),
              verticalSpace(12),
              const ForgetPasswordAndRememberText(),
              verticalSpace(24),
              CreateAccountBotton(
                onTap: () {
                  context.pushNamed(Routes.createAccount);
                },
              ),
              verticalSpace(12),
              AppBrownTextButton(
                text: 'تسجيل دخول',
                onTap: () {
                  context.pushNamed(Routes.home);
                },
              ),
              verticalSpace(17),
              Text('او من خلال', style: AppStyles.font14primary400),
              verticalSpace(26),
              const OtherLoginWay()
            ],
          ),
        ),
      ),
    );
  }
}
