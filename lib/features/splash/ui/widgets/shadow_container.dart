import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.w,
      height: 410.h,
      decoration: BoxDecoration(
        // color: const Color(0xFFFFA054).withOpacity(0),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.elliptical(115.w, 210.h)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFA054).withOpacity(.1),
            spreadRadius: 0,
            blurRadius: 5000,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }
}
