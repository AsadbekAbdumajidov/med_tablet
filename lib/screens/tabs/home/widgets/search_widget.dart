import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: he(55)),
      child: Container(
        height: he(46),
        width: wi(327),
        decoration: BoxDecoration(
          color: AppColors.black38.withOpacity(0.05),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.search, size: he(24), color: AppColors.yellow),
                  SizedBox(width: wi(10)),
                  Text('100 000 dori va tovarlar',
                      style: StyleText.styleBlack38W400Size14),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_voice_outlined,
                      size: he(24), color: AppColors.yellow),
                  SizedBox(width: wi(5)),
                  Icon(Icons.image_search_sharp,
                      size: he(24), color: AppColors.yellow),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
