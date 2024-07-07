import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/features/splash/ui/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.mainBrown,
        child: Stack(
          children: [
            Center(
              child: SvgPicture.asset('assets/svgs/logo.svg'),
            ),
            Positioned(
              top: 56.h,
              left: 275.w,
              child: const ShadowContainer(),
            ),
            Positioned(
              top: 595.h,
              left: -54.w,
              child: const ShadowContainer(),
            ),
          ],
        ),
      ),
    );
  }
}

