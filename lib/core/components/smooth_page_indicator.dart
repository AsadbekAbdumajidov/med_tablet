import 'package:flutter/material.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final dynamic controller;
  const PageIndicator({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: const SlideEffect(
          spacing: 8.0,
          radius: 4.0,
          dotWidth: 24.0,
          dotHeight: 16.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: AppColors.black38,
          activeDotColor: AppColors.indigo),
    );
  }
}
