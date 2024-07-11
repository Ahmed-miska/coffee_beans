import 'package:coffee_beans/core/helpers/app_regex.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/app_styles.dart';
import '../../../core/routing/routs.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 228.h,
      left: 269.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(60),
              const BackArrow(),
              verticalSpace(25),
              Text('نسيت كلمة المرور', style: AppStyles.font22lightPrimary700),
              verticalSpace(12),
              Text('ادخل بريدك الالكتروني', style: AppStyles.font12primary400),
              verticalSpace(25),
              Text('البريد الالكتروني', style: AppStyles.font20lightPrimary700),
              verticalSpace(16),
              AppTextFormField(
                prefixIcon: Icon(Icons.alternate_email, size: 24.sp, color: AppColors.primary),
                hintText: 'mail@mail.com',
                validator: (value) {
                  // ignore: unnecessary_null_comparison
                  if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                    return 'البريد الالكتروني غير صالح';
                  }
                },
              ),
              // const Spacer(),
              verticalSpace(50),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppBrownTextButton(
                  text: 'التالي',
                  onTap: () {
                    context.pushNamed(Routes.resetPassword);
                  },
                ),
              ),
              verticalSpace(35),
            ],
          ),
        ),
      ),
    );
  }
}
