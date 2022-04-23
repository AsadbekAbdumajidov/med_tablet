import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_tabs_app_bar.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(title: "Savat", rightIcon: Icons.more_vert_outlined)
          .getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svg/remove.svg',
                    height: he(25),
                  ),
                ),
                SizedBox(width: wi(16)),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svg/share.svg',
                    height: he(25),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: he(413),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: he(20)),
                  itemCount: 2,
                  itemBuilder: (_, __) {
                    return Column(
                      children: [
                        Row(children: [
                          Container(
                              height: he(140),
                              width: wi(80),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/png/dori2.png"),
                                      fit: BoxFit.cover))),
                          SizedBox(width: wi(5)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: AppColors.yellow,
                                          size: he(16)),
                                      Icon(Icons.star,
                                          color: AppColors.yellow,
                                          size: he(16)),
                                      Icon(Icons.star,
                                          color: AppColors.yellow,
                                          size: he(16)),
                                      Icon(Icons.star,
                                          color: AppColors.yellow,
                                          size: he(16)),
                                      Icon(Icons.star,
                                          color: AppColors.yellow,
                                          size: he(16)),
                                    ],
                                  ),
                                  SizedBox(width: wi(140)),
                                  Icon(Icons.favorite_border_rounded,
                                      color: AppColors.black38, size: he(20))
                                ],
                              ),
                              SizedBox(height: he(5)),
                              Text(
                                "Tantum Verde uchun \nspreyitopikal qo'llash, 30 ml",
                                style: StyleText.styleBlackW400Size12,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: he(20)),
                                child: Text(
                                  "Sotuvda mavjud",
                                  style: StyleText.styleBlueAccentW400Size14,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("285 000 so'm",
                                      style: StyleText.styleBlackW700Size18),
                                  SizedBox(width: wi(16)),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              radius: he(14),
                                              backgroundColor: AppColors
                                                  .primary100
                                                  .withOpacity(0.4),
                                              child: const Icon(Icons.remove,
                                                  color: AppColors.primary100)),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: wi(10)),
                                            child: Text("0",
                                                style: StyleText
                                                    .styleBlackW700Size18),
                                          ),
                                          CircleAvatar(
                                            radius: he(14),
                                            child: const Icon(Icons.add,
                                                color: AppColors.white),
                                            backgroundColor:
                                                AppColors.primary100,
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.shopping_cart_outlined,
                                              size: he(24))),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                        Padding(
                          padding: EdgeInsets.only(
                              left: wi(15), right: wi(15), bottom: he(20)),
                          child: Divider(
                              color: AppColors.black38, height: he(2.5)),
                        ),
                      ],
                    );
                  }),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jami:", style: StyleText.styleBlack38W400Size14),
                    Text("285 000", style: StyleText.styleBlackW700Size14)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Promo-kod chegirmasi:",
                          style: StyleText.styleBlack38W400Size14),
                      Text("0", style: StyleText.styleBlackW700Size14)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Yetkazib berish:",
                        style: StyleText.styleBlack38W400Size14),
                    Text("0", style: StyleText.styleBlackW700Size14)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(16)),
                  child: Divider(color: AppColors.black38, height: he(2.5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jami:", style: StyleText.styleBlackW700Size14),
                    Text("285 000 so'm", style: StyleText.styleBlackW700Size14)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: he(30), top: he(16)),
                  child: ElevatedButton(
                      style: StyleButton.blueAccent,
                      onPressed: () {},
                      child: const Text("Buyurtma berish")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
