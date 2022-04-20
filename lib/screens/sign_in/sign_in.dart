import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
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
                controller: name,
                text: "Parolni kiriting",
                icon: Icons.lock_outline_rounded),
              
          ],
        ),
      ),
    );
  }
}
