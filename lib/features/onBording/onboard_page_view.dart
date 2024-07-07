import 'package:coffee_beans/core/helpers/app_assets.dart';
import 'package:coffee_beans/features/onBording/ui/widgets/board_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class OnboardPageView extends StatelessWidget {
  final PageController pageController;
  const OnboardPageView({super.key, required this.pageController});

  static List title = [
    'لنسكتشف انواع\nجديده من القهوة',
    'رحلة في عالم القهوة',
    '"مذاقات القهوة: تجربة لا تُنسى"',
  ];

  static List subTitle = [
    'انواع مختلفة من القهوة الطازجية يوميا بنكهات مختلفة',
    'استمتع بنكهات مميزة وتجارب\nجديدة كل يوم',
    'اكتشف أروع النكهات والعطور\nمن حول العالم',
  ];

  static List image = [
    AppAssets.board1,
    AppAssets.board2,
    AppAssets.board3,
  ];

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => BoardItem(
          image: image[index],
          title: title[index],
          subTitle: subTitle[index],
          index: index,
        ),
      ),
    );
  }
}
