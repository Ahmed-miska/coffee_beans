import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDone extends StatelessWidget {
  const OrderDone({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 20.h,
      left: 317.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(60),
            const Align(alignment: Alignment.topRight, child: BackArrow()),
            verticalSpace(115),
            Expanded(child: Image.asset(AppAssets.orderDone)),
            verticalSpace(50),
            Text('تم انشاء طلبك بنجاح', style: AppStyles.font22lightPrimary700),
            verticalSpace(5),
            Text('تم انشاء طلبك بنجاح وجاري توصيله لعنوانك في اسرع وقت', style: AppStyles.font12primary400),
            const Spacer(),
            AppBrownTextButton(text: 'تتبع الطلب', onTap: () {}),
            verticalSpace(35),
          ],
        ),
      ),
    );
  }
}
