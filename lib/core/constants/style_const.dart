import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';

class StyleText {

  static TextStyle styleBlackW700Size14 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w700, fontSize: he(14));

  static TextStyle styleActionRedW700Size16 = TextStyle(
      fontSize: he(16),
      color: AppColors.actionRed,
      fontWeight: FontWeight.w700);

  static TextStyle styleBlackW400Size12 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w400, fontSize: he(12));

  static TextStyle styleGrey80W700Size14 = TextStyle(
      color: AppColors.grey80, fontWeight: FontWeight.w700, fontSize: he(14));

  static TextStyle styleBlueAccentW400Size18 = TextStyle(
      color: AppColors.blueAccent,
      fontWeight: FontWeight.w400,
      fontSize: he(18));

  static TextStyle styleBlackW400Size16 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w400, fontSize: he(16));

  static TextStyle styleBlueAccentW700Size24 = TextStyle(
      color: AppColors.blueAccent,
      fontWeight: FontWeight.w700,
      fontSize: he(24));

  static TextStyle styleBlueAccentW400Size14 =
      const TextStyle(color: AppColors.blueAccent, fontWeight: FontWeight.w400);

  static TextStyle styleBlackW700Size18 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w700, fontSize: he(18));

  static TextStyle styleBlackW700Size24 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w700, fontSize: he(24));

  static TextStyle styleBlack38W400Size16 = TextStyle(
      color: AppColors.black38, fontWeight: FontWeight.w400, fontSize: he(16));

  static TextStyle styleBlack38W400Size14 =
      const TextStyle(color: AppColors.black38, fontWeight: FontWeight.w400);

  static TextStyle styleBlack38W400Size13 = TextStyle(
      color: AppColors.black38, fontWeight: FontWeight.w400, fontSize: he(13));

  static TextStyle styleIndigoW700Size14 =
      const TextStyle(color: AppColors.indigo, fontWeight: FontWeight.w700);

  static TextStyle styleBlack54W600 =
      const TextStyle(color: AppColors.black54, fontWeight: FontWeight.w600);
}

class StyleButton {
  static ButtonStyle blueAccent = OutlinedButton.styleFrom(
    fixedSize: Size(wi(374), he(43)),
    backgroundColor: AppColors.blueAccent,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );

  static ButtonStyle outline = OutlinedButton.styleFrom(
    fixedSize: Size(wi(374), he(43)),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
