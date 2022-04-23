import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_tabs_app_bar.dart';
import 'package:medic/screens/tabs/cart/widgets/builder.dart';

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
             const CartBuilder(),
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
