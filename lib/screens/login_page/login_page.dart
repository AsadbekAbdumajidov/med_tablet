import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: he(80)),
                  child: Container(
                    height: he(350),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/Frame_login.png"),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Med Marketga ! \nhush kelibsiz",
                  textAlign: TextAlign.center,
                  style: StyleText.styleBlackW700Size24,
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    style: StyleButton.blueAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, "/up");
                    },
                    child: const Text("Elektron pochta orqali davom eting")),
                SizedBox(height: he(5)),
                OutlinedButton(
                  style: StyleButton.outline,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: he(30),
                        width: wi(30),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/png/google.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: wi(15),
                      ),
                      Text(
                        "Google bilan davom eting",
                        style: StyleText.styleBlack54W600,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(40)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/in");
                      },
                      child: const Text("KIRISH UCHUN",
                          style: TextStyle(color: AppColors.blueAccent))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
