import 'package:flutter/material.dart';
import 'package:medic/core/components/pin_put_pak_comp.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_login_app_bar.dart';

class LoginVerifyPage extends StatelessWidget {
  const LoginVerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: LogAppBar().getBar(context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: he(30), bottom: he(8)),
                child: Text("Kodni kiriting",
                    style: StyleText.styleBlackW700Size24),
              ),
              Text(
                  "Tasdiqlash kodini +998 33 954 06 90 \ntelefon raqamiga yubordik",
                  textAlign: TextAlign.start,
                  style: StyleText.styleBlack38W400Size16),
              Padding(
                padding: EdgeInsets.only(top: he(20), bottom: he(24)),
                child: PinPutComp(),
              ),
              ElevatedButton(
                  style: StyleButton.blueAccent,
                  onPressed: () {},
                  child: const Text("Yuborish")),
              Padding(
                padding: EdgeInsets.only(top: he(26)),
                child: Text("Kod muddati 00:13 da tugaydi",
                    textAlign: TextAlign.start,
                    style: StyleText.styleBlack38W400Size16),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Yana yuboring",
                      style: TextStyle(color: AppColors.yellow))),
            ],
          ),
        ),
      ),
    );
  }
}
