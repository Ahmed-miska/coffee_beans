import 'dart:async';
import 'package:coffee_beans/core/helpers/extensions.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/widgets/background_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.onBoardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      top: 56.h,
      left: 275.w,
      child: Center(
        child: SvgPicture.asset('assets/svgs/logo.svg'),
      ),
    );
  }
}
