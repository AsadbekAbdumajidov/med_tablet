import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/components/smooth_page_indicator.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/screens/splash_page/widget/for_splash.dart';

class NextSplash extends StatelessWidget {
  const NextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (v) {},
              children: const <Widget>[
                ForSplash(
                    img: "assets/img/Frame1.png",
                    title: "Dori-darmonlarni \n onlayn xarid qiling !",
                    subTitle:
                        "Dorixonaga tashrif \n buyurmasdan  kerakli dori-darmonlarni \ntanlang va sotib oling"),
                ForSplash(
                    img: "assets/img/Frame2.png",
                    title: "Hammasi bir joyda !",
                    subTitle:
                        "Telemeditsina, dori-darmonlar \n yoki gomeopatik vositalarga buyurtma berish - \nhamma narsa shu erda."),
                ForSplash(
                    img: "assets/img/Frame3.png",
                    title: "Tez yetkazib berish \n15 daqiqadan boshlab !",
                    subTitle:
                        "Dori-darmonlaringizni tez yetkazib beramiz. \nKuryerlar himoya vositalarini kiyishadi."),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text("O'tkazib yuborish",
                      style: StyleText.styleBlack38W400Size14)),
              Padding(
                padding: EdgeInsets.only(right: wi(55), left: wi(25)),
                child: PageIndicator(controller: controller),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text("Keyingisi",
                      style: StyleText.styleIndigoW700Size14)),
            ],
          ),
          SizedBox(
            height: he(15),
          )
        ],
      ),
    );
  }
}
