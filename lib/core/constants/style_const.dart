import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';

class StyleText {
  static TextStyle styleBlackW700Size24 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w700, fontSize: he(24));

  static TextStyle styleBlack38W400Size16 = TextStyle(
      color: AppColors.black38, fontWeight: FontWeight.w400, fontSize: he(16));

  static TextStyle styleBlack38W400Size14 =
      const TextStyle(color: AppColors.black38, fontWeight: FontWeight.w400);

  static TextStyle styleIndigoW700Size14 =
      const TextStyle(color: AppColors.indigo, fontWeight: FontWeight.w700);
}

class StyleButton {
  static ButtonStyle blueAccent = OutlinedButton.styleFrom(
    fixedSize:  Size(wi(374), he(50)),
    backgroundColor: AppColors.blueAccent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
