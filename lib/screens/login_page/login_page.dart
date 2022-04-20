import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            ElevatedButton(
                style: StyleButton.blueAccent,
                onPressed: () {},
                child: const Text("Elektron pochta orqali davom eting")),
            ElevatedButton(
              
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    height: he(16),
                    child: SvgPicture.asset("assets/png/google.png",
                        height: he(16)),
                  ),
                  const Text("Elektron pochta orqali davom eting"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
