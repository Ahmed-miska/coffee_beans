import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {
  const MySeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        155 ~/ 5,
        (index) => Expanded(
          child: Container(
            color: index % 2 == 0 ? AppColors.lightPrimary : Colors.transparent,
            height: 2,
          ),
        ),
      ),
    );
  }
}
