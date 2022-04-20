
import 'package:flutter/material.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class FormFieldLogText extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String label;
  const FormFieldLogText({
    Key? key,
    required this.type,
    required this.label,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (v) {},
      controller: controller,
      keyboardType: type,
      cursorColor: AppColors.indigo,
      decoration: InputDecoration(
        hintStyle: StyleText.styleBlack38W400Size14,
        label: Text(label, style: StyleText.styleBlack38W400Size14),
       
      ),
    );
  }
}
