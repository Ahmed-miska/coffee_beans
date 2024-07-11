import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/features/home/ui/widgets/home_app_bar.dart';
import 'package:coffee_beans/features/home/ui/widgets/main_column_in_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                verticalSpace(50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text('كوفي بينز', style: AppStyles.font28lightPrimary800),
                ),
                verticalSpace(80),
                const MainColumnInHomeScreen()
              ],
            ),
            Positioned(
              top: 110.h,
              left: 16.w,
              child: const HomeAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
