import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/screens/tabs/home/widgets/builder_bir.dart';
import 'package:medic/screens/tabs/home/widgets/builder_ikki.dart';
import 'package:medic/screens/tabs/home/widgets/builder_tort.dart';
import 'package:medic/screens/tabs/home/widgets/builder_uch.dart';
import 'package:medic/screens/tabs/home/widgets/search_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchWidget(),
            const BuilderBirWidget(),
            SizedBox(height: he(33)),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wi(24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: const [
                        Text("Kunning mahsulotlari: ",
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w700)),
                        Text("6")
                      ]),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded,
                              color: AppColors.black.withOpacity(0.3)))
                    ],
                  ),
                ),
                const BuilderIkki()
              ],
            ),
            SizedBox(height: he(20)),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wi(24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text("To'plamlar: ",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700)),
                          Text("36")
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded,
                              color: AppColors.black.withOpacity(0.3)))
                    ],
                  ),
                ),
                const BuilderUch()
              ],
            ),
            SizedBox(height: he(8)),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wi(24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: const [
                        Text("Qidiruvlaringiz: ",
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w700)),
                        Text("7")
                      ]),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded,
                              color: AppColors.black.withOpacity(0.3)))
                    ],
                  ),
                ),
                const BuilderTort()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
