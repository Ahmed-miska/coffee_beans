import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/helpers/spacing.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:coffee_beans/features/cafe_details/widgets/details_widget.dart';
import 'package:coffee_beans/features/cafe_details/widgets/drinks_widget.dart';
import 'package:flutter/material.dart';

class CafeDetailsList extends StatefulWidget {
  const CafeDetailsList({super.key});

  @override
  State<CafeDetailsList> createState() => _CafeDetailsListState();
}

class _CafeDetailsListState extends State<CafeDetailsList> {
  int count = 0;
  Widget _displayedWidget = const Details();

  void _showWidget1() {
    setState(() {
      count = 0;
      _displayedWidget = const Details();
    });
  }

  void _showWidget2() {
    setState(() {
      count = 1;
      _displayedWidget = const Drinks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: _showWidget2,
                child: Column(
                  children: [
                    Text(
                      'المشروبات',
                      style: AppStyles.font18white500.copyWith(
                        color: count == 1 ? AppColors.lightPrimary : null,
                      ),
                    ),
                    Divider(color: count == 1 ? AppColors.lightPrimary : Colors.transparent),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _showWidget1,
                child: Column(
                  children: [
                    Text(
                      'تفاصيل',
                      style: AppStyles.font18white500.copyWith(
                        color: count == 0 ? AppColors.lightPrimary : null,
                      ),
                    ),
                    Divider(color: count == 0 ? AppColors.lightPrimary : Colors.transparent),
                  ],
                ),
              ),
            ),
          ],
        ),
        verticalSpace(17),
        _displayedWidget,
      ],
    );
  }
}
