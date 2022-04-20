import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_login_app_bar.dart';
import 'package:medic/screens/sign_in/widget/form_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController parol = TextEditingController();
    return Scaffold(
      appBar: LogAppBar().getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(15)),
              child: Column(
                children: [
                  Text("Xush kelibsiz!", style: StyleText.styleBlackW700Size24),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: he(30)),
                    child: FormFieldText(
                        type: TextInputType.text,
                        controller: name,
                        text: "Foydalanuvchi nomi",
                        icon: Icons.person_outline_outlined),
                  ),
                  FormFieldText(
                      type: TextInputType.number,
                      controller: parol,
                      text: "Parolni kiriting",
                      icon: Icons.lock_outline_rounded),
                  SizedBox(
                    height: he(30),
                  ),
                  ElevatedButton(
                      style: StyleButton.blueAccent,
                      onPressed: () {},
                      child: const Text("KIRISH")),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: he(15)),
              child: TextButton(
                  onPressed: () {},
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: he(16),
                      color: AppColors.black38,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: wi(25), right: wi(10)),
                      child: Text("Hisobingiz yo'qmi?",
                          style: StyleText.styleBlack38W400Size14),
                    ),
                    const Text("Roʻyxatdan oʻtish",
                        style: TextStyle(color: AppColors.yellow))
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
