import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchAppBar extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const SearchAppBar({
    super.key,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: controller,
        style: AppStyles.font16white500,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 12.h),
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.edit, color: AppColors.primary),
          hintText: 'معلومات اضافية للسائق ...',
          hintStyle: AppStyles.font14primary400,
          hintTextDirection: TextDirection.rtl,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
