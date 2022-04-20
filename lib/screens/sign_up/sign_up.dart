import 'package:flutter/material.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/core/constants/style_const.dart';
import 'package:medic/core/widgets/for_login_app_bar.dart';
import 'package:medic/screens/sign_up/widget/for_login_fomr_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController parol = TextEditingController();
    TextEditingController number = TextEditingController();
    TextEditingController email = TextEditingController();
    bool bol = false;
    return Scaffold(
      appBar: LogAppBar().getBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(30)),
            child: Column(
              children: [
                Text("Hisob ochish", style: StyleText.styleBlackW700Size24),
                SizedBox(height: he(23)),
                FormFieldLogText(
                  type: TextInputType.text,
                  controller: name,
                  label: "Ism",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(16)),
                  child: FormFieldLogText(
                    type: TextInputType.number,
                    controller: number,
                    label: "Telefon raqam",
                  ),
                ),
                FormFieldLogText(
                  type: TextInputType.emailAddress,
                  controller: email,
                  label: "Elektron pochta manzil",
                ),
                SizedBox(height: he(16)),
                TextFormField(
                  controller: parol,
                  keyboardType: TextInputType.number,
                  obscureText: bol == true ? true : false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            bol == true ? bol = false : bol = true;
                          });
                        },
                        icon: Icon(
                          bol == true
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                        ),
                      ),
                      label: Text("Parol",style:StyleText.styleBlack38W400Size14)),
                ),
                SizedBox(height: he(28)),
                ElevatedButton(
                    style: StyleButton.blueAccent,
                    onPressed: () {},
                    child: const Text("Hisob ochish")),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: he(15)),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: he(16),
                    color: AppColors.black38,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: wi(25), right: wi(10)),
                    child: Text("Hisobingiz bormi?",
                        style: StyleText.styleBlack38W400Size14),
                  ),
                  const Text("KIRISH",
                      style: TextStyle(color: AppColors.yellow))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
