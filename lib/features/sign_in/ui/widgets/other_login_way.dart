import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtherLoginWay extends StatelessWidget {
  const OtherLoginWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(flex: 2),
        SvgPicture.asset(AppAssets.google),
        const Spacer(),
        SvgPicture.asset(AppAssets.apple),
        const Spacer(),
        SvgPicture.asset(AppAssets.facebook),
        const Spacer(flex: 2),
      ],
    );
  }
}
