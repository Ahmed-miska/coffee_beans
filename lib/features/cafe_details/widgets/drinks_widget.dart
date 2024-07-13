import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/app_text_button.dart';
import 'package:coffee_beans/features/cafe_details/widgets/drinks_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            child: const DrinksListViewItem(),
          ),
        ),
        verticalSpace(20),
        Row(
          children: [
            Text('جـ / الساعة', style: AppStyles.font16lightPrimary500),
            horizontalSpace(5),
            Text('60.00', style: AppStyles.font28white800),
            horizontalSpace(20),
            Expanded(
              child: AppBrownTextButton(
                text: 'اطلب الان',
                onTap: () {
                  context.pushNamed(Routes.order);
                },
              ),
            ),
          ],
        ),
        verticalSpace(35),
      ],
    );
  }
}
