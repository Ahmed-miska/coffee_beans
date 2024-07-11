import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class HomeListViewItemTwo extends StatelessWidget {
  const HomeListViewItemTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.darkGrey,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('ميلا روسا', style: AppStyles.font20lightPrimary700),
                  verticalSpace(8),
                  const StarRating(),
                  verticalSpace(8),
                  Text(
                    'كافيه ومطعم وقاعة افراح , يقع في موقع متميز على النيل في دمياط',
                    style: AppStyles.font12white400,
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: Image.asset(
              'assets/images/melaross.png',
            ),
          )
        ],
      ),
    );
  }
}
