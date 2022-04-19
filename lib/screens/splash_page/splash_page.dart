import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/next_splash', (route) => false);
    });

    return FadeInUp(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: he(95),
              width: wi(143),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/png/Logo.png"),
                ),
              ),
            ),
            SizedBox(height: he(15),),
            Container(
              height: he(38),
              width: wi(143),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/png/logo_name.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}