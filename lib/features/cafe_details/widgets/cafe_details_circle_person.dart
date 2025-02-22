import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CafeDetailsCirclePerson extends StatelessWidget {
  const CafeDetailsCirclePerson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15.r,
      backgroundColor: AppColors.lightPrimary,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(AppAssets.girl, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
