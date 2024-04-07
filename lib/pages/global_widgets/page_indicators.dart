import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicators extends StatelessWidget {
  const PageIndicators({super.key,  required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SmoothPageIndicator(
        controller:controller,
        count: 3,
        axisDirection: Axis.horizontal,
        effect: const SlideEffect(
            spacing: 6,
            radius: 50,
            dotWidth: 6.0,
            dotHeight: 6.0,
            //expansionFactor: 2,
            dotColor: Colors.grey,
            activeDotColor: AppColors.primeryBlue),
      ),
    );
  }
}
