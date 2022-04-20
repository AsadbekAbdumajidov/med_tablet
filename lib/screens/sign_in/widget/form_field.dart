import 'package:flutter/material.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class FormFieldText extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final IconData icon;
  final TextInputType type;
  const FormFieldText(
      {Key? key,
      required this.type,
      required this.controller,
      required this.text,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (v) {},
      controller: controller,
      keyboardType: type,
      cursorColor: AppColors.indigo,
      decoration: InputDecoration(
        hintStyle: StyleText.styleBlack38W400Size14,
        hintText: text,
        prefixIcon: Icon(
          icon,
          color: AppColors.black,
        ),
      ),
    );
  }
}
