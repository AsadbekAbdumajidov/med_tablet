import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NextSplash extends StatelessWidget {
  const NextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        children: <Widget>[
          Column(
            children:  [
              
            ],
          ),
           Column(
            children: const [
              Center(
                child: Text('Secossssssssssssssnd Page'),
              ),
            ],
          ),
           Column(
            children: const [
              Center(
                child: Text('Secoddddddddnd Page'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
