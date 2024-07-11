import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIndacator extends StatelessWidget {
  final bool isActive;
  const CustomIndacator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.w,
      height: 3.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.lightPrimary : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
