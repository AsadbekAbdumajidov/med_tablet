import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_tabs_app_bar.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
              title: "Yoqtirilganlar", rightIcon: Icons.more_vert_rounded)
          .getBar(context),
      body: GridView.builder(
        padding: EdgeInsets.only(left: wi(24), top: he(10)),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: 14,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: he(260),
          crossAxisCount: 2,
        ),
        itemBuilder: (_, __) => Stack(
          children: [
            Container(
              width: wi(160),
              margin:
                  EdgeInsets.only(right: wi(20), top: he(10), bottom: he(10)),
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
                      height: he(120),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/png/dori.png"))),
                    ),
                    Text("Nurofen bolalar uchunsuspenziya 230 ml",
                        style: StyleText.styleBlackW400Size12),
                    SizedBox(height: he(18)),
                    Row(
                      children: [
                        Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                        Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                        Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                        Icon(Icons.star, color: AppColors.yellow, size: he(18)),
                        Icon(Icons.star,
                            color: AppColors.black38, size: he(18)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: he(8), bottom: he(10)),
                      child: Text("131 000 so'm.",
                          style: StyleText.styleActionRedW700Size16),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: he(8),
                child: IconButton(
                  splashRadius: 1,
              onPressed: () {},
              icon:  Icon(Icons.favorite, color: AppColors.actionRed,size: he(25),),
            ))
          ],
        ),
      ),
    );
  }
}
