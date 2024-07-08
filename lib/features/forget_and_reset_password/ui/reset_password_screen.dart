import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/app_text_form_field.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/app_styles.dart';
import '../../../core/theming/colors.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace(60),
            SvgPicture.asset(AppAssets.backArrow),
            verticalSpace(25),
            Text('انشاء كلمة مرور جديده', style: AppStyles.font22lighterBrown700),
            verticalSpace(12),
            Text('ادخل كلمة المرور الجديدة', style: AppStyles.font12lightBrown400),
            verticalSpace(25),
            Text('كلمة المرور', style: AppStyles.font20lighterBrown700),
            verticalSpace(16),
            AppTextFormField(
              prefixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure1 = !isObscure1;
                  });
                },
                child: Icon(
                  isObscure1 ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  size: 24.sp,
                  color: AppColors.primary,
                ),
              ),
              hintText: 'ادخل كلمة المرور الجديدة',
              isObscureText: isObscure1,
              validator: (value) {
                // ignore: unnecessary_null_comparison
                if (value == null || value.isEmpty) {
                  return 'كلمة المرور مطلوبه';
                }
              },
            ),
            verticalSpace(25),
            Text('تاكيد كلمة المرور', style: AppStyles.font20lighterBrown700),
            verticalSpace(16),
            AppTextFormField(
              prefixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure2 = !isObscure2;
                  });
                },
                child: Icon(
                  isObscure2 ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  size: 24.sp,
                  color: AppColors.primary,
                ),
              ),
              hintText: 'اعد ادخال كلمة المرور مرة اخرى',
              isObscureText: isObscure2,
              validator: (value) {
                // ignore: unnecessary_null_comparison
                if (value == null || value.isEmpty) {}
              },
            ),
            const Expanded(child: SizedBox()),
            const Spacer(),
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
    );
  }
}
