import 'package:coffee_beans/features/sign_in/ui/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/app_styles.dart';

class ForgetPasswordAndRememberText extends StatelessWidget {
  const ForgetPasswordAndRememberText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  Text('نسيت كلمة المرور ؟', style: AppStyles.font16lighterBrown400),
                  const Spacer(),
                  Text('تذكرني', style: AppStyles.font16lighterBrown400),
                  const CustomCheckBox(),
                ],
              );
  }
}