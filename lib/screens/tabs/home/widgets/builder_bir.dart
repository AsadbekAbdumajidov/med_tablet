import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class BuilderBirWidget extends StatelessWidget {
  const BuilderBirWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List icon = [
      "assets/png/chat.png",
      "assets/png/location.png",
      "assets/png/dostavka.png"
    ];
    List title = [
      "Farmatsevt bilan suhbatlashing",
      "Dorixona xaritasi",
      "Yetkazib berish"
    ];
    List subtitle = [
      "Mutaxassisdan konsultatsiya",
      "Dorixonlarga buyurtma berish",
      "Buyurtmani tez yetkazib beramiz"
    ];
    return SizedBox(
      height: he(180),
      child: ListView.builder(
        itemCount: icon.length,
        padding: EdgeInsets.only(left: wi(19), top: he(27)),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, __) {
          return Container(
            margin: EdgeInsets.only(right: wi(16)),
            width: wi(120),
            decoration: BoxDecoration(
              color: AppColors.black38.withOpacity(0.01),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: AppColors.black38, width: wi(0.5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: he(35),
                    width: wi(33),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(icon[__])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: he(15)),
                    child:
                        Text(title[__], style: StyleText.styleGrey80W700Size14),
                  ),
                  Text(subtitle[__]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
