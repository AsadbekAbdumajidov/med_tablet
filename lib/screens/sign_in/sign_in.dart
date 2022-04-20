import 'package:flutter/material.dart';
import 'package:medic/core/widgets/for_login_app_bar.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LogAppBar().getBar(context),
      body: Column(
        children: [],
      ),
    );
  }
}
