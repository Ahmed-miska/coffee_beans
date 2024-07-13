import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/features/cafe_details/widgets/cafe_details_circle_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowOfPeople extends StatelessWidget {
  final Color? color;
  const RowOfPeople({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 100.w,
                child: const CafeDetailsCirclePerson(),
              ),
              Positioned(
                left: 75.w,
                child: const CafeDetailsCirclePerson(),
              ),
              Positioned(
                left: 50.w,
                child: const CafeDetailsCirclePerson(),
              ),
              Positioned(
                left: 25.w,
                child: const CafeDetailsCirclePerson(),
              ),
              const CafeDetailsCirclePerson(),
            ],
          ),
        ),
        Expanded(
          child: Text(
            "شخص قامو بزيارة هذا المكان",
            style: AppStyles.font16white500.copyWith(color: color),
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
          ),
        )
      ],
    );
  }
}
