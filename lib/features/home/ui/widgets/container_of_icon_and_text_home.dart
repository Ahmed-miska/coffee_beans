import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerOfIconAndTextHome extends StatelessWidget {
  final String icon, text;
  const ContainerOfIconAndTextHome({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        Text(text, style: AppStyles.font14lightPrimary400),
      ],
    );
  }
}
