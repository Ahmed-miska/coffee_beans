import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: 4.5,
      starColor: AppColors.stars,
      starCount: 5,
      valueLabelColor: Colors.transparent,
      valueLabelTextStyle: AppStyles.font14lightPrimary700,
      maxValueVisibility: false,
      valueLabelVisibility: true,
      starOffColor: const Color(0xff7D7D7D),
      angle: 0,
    );
  }
}
