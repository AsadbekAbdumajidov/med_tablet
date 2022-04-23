import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_tabs_app_bar.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List kategoriya = [
      "To'plamlar",
      "Dori-darmonlar",
      "Vitaminlar va BAD",
      "Foydali taklif",
      "Gigiena",
      "Uy hayvonlari uchun materiallar",
      "Kelajakdagi onalar uchun",
      "Tibbiy asbob-uskunalar",
      "COVID-19 dan himoya vositalari"
    ];
    SizeConfig().init(context);
    return Scaffold(
      appBar: HomeAppBar(
              title: "Kategoriyalar", rightIcon: Icons.more_vert_outlined)
          .getBar(context),
      body: Column(
        children: [
          SizedBox(
            height: he(60),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: Container(
                height: he(40),
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
                      Icon(Icons.search, size: he(24), color: AppColors.yellow),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintText: " 100 000 dori va tovarlar",
                              hintStyle: StyleText.styleBlack38W400Size14),
                        ),
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
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              padding:
                  EdgeInsets.symmetric(horizontal: wi(24), vertical: he(10)),
              itemCount: kategoriya.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, __) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: wi(5)),
                      onTap: () {},
                      title: Text(kategoriya[__],
                          style: StyleText.styleBlackW700Size14),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,
                          color: AppColors.black.withOpacity(0.3)),
                    ),
                    Divider(color: AppColors.black38, height: he(2.5)),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
