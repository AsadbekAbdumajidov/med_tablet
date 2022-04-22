import 'package:flutter/material.dart';
import 'package:medic/screens/tabs/cart/cart.dart';
import 'package:medic/screens/tabs/categories/categories.dart';
import 'package:medic/screens/tabs/favorites/favorites.dart';
import 'package:medic/screens/tabs/home/home.dart';
import 'package:medic/screens/tabs/profile/profile.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  Home? _home;
  Categories? _categories;
  Cart? _cart;
  Favorites? _favorites;
  Profile? _profile;

  final List _pages = [];

  @override
  void initState() {
    super.initState();
    _home = const Home();
    _categories = const Categories();
    _cart = const Cart();
    _favorites = const Favorites();
    _profile = const Profile();

    _pages.addAll([_home, _categories, _cart, _favorites, _profile]);
    debugPrint("$_pages");
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar:
          BottomNavigationDotBar(items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.map, onTap: () {}),
        BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () {}),
        BottomNavigationDotBarItem(icon: Icons.timer, onTap: () {}),
      ]),
    );
  }
}
