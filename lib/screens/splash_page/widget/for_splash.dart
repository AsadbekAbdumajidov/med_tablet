import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/style_const.dart';

class ForSplash extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  const ForSplash({
    Key? key,
    required this.img,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: he(80)),
          child: Container(
            height: he(350),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
          ),
        ),
        SizedBox(height: he(60),),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(20)),
              child: Text(title, style: StyleText.styleBlackW700Size24),
            ),
            Text(subTitle,
                textAlign: TextAlign.center,
                style: StyleText.styleBlack38W400Size16),
          ],
        )
      ],
    );
  }
}
