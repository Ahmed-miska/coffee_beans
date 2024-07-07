import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        checkboxTheme: CheckboxThemeData(
          side: WidgetStateBorderSide.resolveWith(
            (Set<WidgetState> states) {
              return const BorderSide(color: AppColors.lighterBrown, width: 1.3);
            },
          ),
        ),
      ),
      child: Checkbox(
        value: isChecked,
        onChanged: (_) {
          setState(() {
            isChecked = !isChecked;
          });
        },
        activeColor: Colors.transparent,
        checkColor: AppColors.lighterBrown,
        side: const BorderSide(color: AppColors.lighterBrown, width: 1.3),
      ),
    );
  }
}
