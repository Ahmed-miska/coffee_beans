import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/features/splash/ui/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundPage extends StatelessWidget {
  final double? top, left;
  final Widget? child;
  const BackgroundPage({
    super.key,
    this.top,
    this.left,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.darkPrimary,
        child: Stack(
          children: [
            Positioned(
              top: top ?? 22.h,
              left: left ?? 341.w,
              child: const ShadowContainer(),
            ),
            Positioned(
              top: 595.h,
              left: -54.w,
              child: const ShadowContainer(),
            ),
            child ?? Container(),
          ],
        ),
      ),
    );
  }
}
