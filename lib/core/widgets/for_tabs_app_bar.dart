import 'package:flutter/material.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class HomeAppBar {
  String title;
  IconData rightIcon;

  HomeAppBar({
    required this.title,
    required this.rightIcon,
  });
  getBar(context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.transparent,
      title: Text(title,
          textAlign: TextAlign.center, style: StyleText.styleBlackW700Size18),
      actions: [
        IconButton(
          splashRadius: 20,
          icon: Icon(rightIcon, color: AppColors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
