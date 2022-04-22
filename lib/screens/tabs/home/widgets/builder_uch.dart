import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class BuilderUch extends StatelessWidget {
  const BuilderUch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he(400),
      width: double.infinity,
      child: GridView.builder(
        padding: EdgeInsets.only(left: wi(24), top: he(10)),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 36,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: he(180),
          crossAxisCount: 2,
        ),
        itemBuilder: (_, __) => Container(
          height: he(196),
          decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 7),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.only(right: wi(18), bottom: he(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: he(139),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(he(10)),
                      topRight: Radius.circular(he(10))),
                  color: AppColors.black38.withOpacity(0.04),
                  image: const DecorationImage(
                      image: AssetImage("assets/img/cat_dori.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: he(15),left: wi(10)),
                child: Text(
                  "Allergiya",
                  style: StyleText.styleBlackW700Size14
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
