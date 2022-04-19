import 'package:flutter/material.dart';
import 'package:medic/routers/router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final RouteGenerate _forRouter = RouteGenerate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medic Tablets',
        initialRoute: '/',
        onGenerateRoute: _forRouter.generate);
  }
}
