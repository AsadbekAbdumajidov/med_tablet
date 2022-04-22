import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';

class LogAppBar {
  getBar(context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      leading: IconButton(
          splashRadius: he(24),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.black)),
      actions: [
        IconButton(
            splashRadius: he(24),
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined, color: AppColors.black)),
      ],
    );
  }
}
