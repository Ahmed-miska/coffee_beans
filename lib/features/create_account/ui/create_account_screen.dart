import 'package:coffee_beans/core/helpers/app_regex.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';
import 'widgets/first_and_last_name.dart';
import '../../../core/widgets/pass_and_confarm_pass.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 142.h,
      left: 347.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(90),
              Text('انشاء حساب جديد', style: AppStyles.font22lightPrimary700),
              verticalSpace(12),
              Text('ادخل البيانات المطلوبة بالاسفل', style: AppStyles.font12primary400),
              verticalSpace(21),
              const FirstAndLastName(),
              verticalSpace(40),
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
              verticalSpace(16),
              const PassAndConfarmPass(),
              verticalSpace(40),
              AppBrownTextButton(
                  text: 'انشاء حساب',
                  onTap: () {
                    context.pushNamed(Routes.otp);
                  }),
              verticalSpace(12),
            ],
          ),
        ),
      ),
    );
  }
}
