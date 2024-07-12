import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/core/widgets/back_arrow.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:coffee_beans/features/cafe_details/widgets/cafe_details_list.dart';
import 'package:coffee_beans/features/cafe_details/widgets/row_of_people.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CafeDetailsTwo extends StatelessWidget {
  const CafeDetailsTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 137.h,
      left: 315.w,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(60),
              const Row(
                children: [Icon(Icons.favorite, color: AppColors.lightPrimary), Spacer(), BackArrow()],
              ),
              verticalSpace(25),
              Container(
                height: 162.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/details.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verticalSpace(20),
              Text('مايانو', style: AppStyles.font28white800),
              verticalSpace(8),
              Row(
                children: [
                  const Spacer(),
                  Text('دمياط الجديدة - المنطقة المركزية', style: AppStyles.font16lightPrimary500),
                  horizontalSpace(5),
                  const Icon(Icons.location_on_outlined, color: AppColors.lightPrimary),
                ],
              ),
              verticalSpace(8),
              const RowOfPeople(color: AppColors.lightPrimary),
              verticalSpace(15),
              const CafeDetailsList(),
            ],
          ),
        ),
      ),
    );
  }
}
