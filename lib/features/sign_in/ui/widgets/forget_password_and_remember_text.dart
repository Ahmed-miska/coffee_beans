import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/features/sign_in/ui/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/app_styles.dart';
import '../../../../core/routing/routs.dart';

class ForgetPasswordAndRememberText extends StatelessWidget {
  const ForgetPasswordAndRememberText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              context.pushNamed(Routes.forgetPassword);
            },
            child: Text('نسيت كلمة المرور ؟', style: AppStyles.font16lightPrimary400)),
        const Spacer(),
        Text('تذكرني', style: AppStyles.font16lightPrimary400),
        const CustomCheckBox(),
      ],
    );
  }
}
