import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_tabs_app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List profile = [
      "Shahar: Toshkent-Chilonzor-24",
      "Yetkazib berish",
      "Dorixonalardan olib ketish",
      "To'lov",
      "Kontaktlar",
      "Kompaniya haqida",
      "1.3.9 versiyasi"
    ];
    return Scaffold(
      appBar: HomeAppBar(
        title: "Profile",
        rightIcon: Icons.more_vert_rounded,
      ).getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svg/notif.svg',
                    height: he(30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(14)),
              child: ListTile(
                onTap: () {},
                title: Text("Asadbek Abdumajidov",
                    style: StyleText.styleBlueAccentW700Size24),
                subtitle: Text("Kontakt ma'lumotlarini tahrirlash",
                    style: StyleText.styleBlueAccentW400Size14),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.black.withOpacity(0.3)),
              ),
            ),
            Container(
              height: he(56),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage("assets/png/reklama.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(24)),
              child: SizedBox(
                height: he(445),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: profile.length,
                    padding: EdgeInsets.only(top: he(40)),
                    itemBuilder: (_, __) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: (){},
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: wi(5)),
                            title: Text(profile[__],
                                style: StyleText.styleBlackW400Size16),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.black.withOpacity(0.3),
                              size: he(20),
                            ),
                          ),
                          Divider(color: AppColors.black38, height: he(2.5)),
                        ],
                      );
                    }),
              ),
            ),
            SizedBox(height: he(10)),
            TextButton(
                onPressed: () {},
                child:
                    Text("CHIQISH", style: StyleText.styleBlueAccentW400Size18))
          ],
        ),
      ),
    );
  }
}
