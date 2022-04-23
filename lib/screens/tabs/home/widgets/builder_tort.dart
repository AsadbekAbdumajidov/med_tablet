import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class BuilderTort extends StatelessWidget {
  const BuilderTort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he(335),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: wi(24)),
        itemCount: 6,
        itemBuilder: (_, __) {
          return Container(
            width: wi(160),
            margin: EdgeInsets.only(right: wi(24), top: he(10), bottom: he(10)),
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black38.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 7),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(he(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: he(146),
                    width: wi(142),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/png/dori1.png"))),
                  ),
                  Text("Arpeflu tabletkalari,100 mg, 30 dona",
                      style: StyleText.styleBlackW400Size12),
                  SizedBox(height: he(18)),
                  Row(
                    children:  [
                      Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                      Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                      Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                      Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                      Icon(Icons.star, color: AppColors.black38, size: he(18)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: he(8), bottom: he(10)),
                    child: Text("354 000 so'm.",
                        style: StyleText.styleActionRedW700Size16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: he(16),
                              backgroundColor:
                                  AppColors.primary100.withOpacity(0.4),
                              child: const Icon(Icons.remove,
                                  color: AppColors.primary100)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: wi(10)),
                            child: Text("0",
                                style: StyleText.styleBlackW700Size18),
                          ),
                          CircleAvatar(
                            radius: he(16),
                            child:
                                const Icon(Icons.add, color: AppColors.white),
                            backgroundColor: AppColors.primary100,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.shopping_cart_outlined, size: he(24))),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
