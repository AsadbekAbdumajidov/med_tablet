import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:medic/core/components/size_konfig.dart';
import 'package:medic/core/constants/color_const.dart';
import 'package:medic/cubit/nav_bar_cubit.dart';
import 'package:medic/cubit/state.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => NavBarBloc(),
      child: BlocConsumer<NavBarBloc, TabletState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: context
          .read<NavBarBloc>()
          .pages[context.watch<NavBarBloc>().currentIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(15), vertical: he(8)),
          child: GNav(
            gap: wi(8),
            activeColor: AppColors.blueAccent,
            iconSize: he(24),
            padding: EdgeInsets.symmetric(horizontal: wi(10), vertical: he(12)),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[200]!,
            color: AppColors.black,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.copyrightAlt,
                text: 'Cart',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Favorites',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: context.watch<NavBarBloc>().currentIndex,
            onTabChange: (v) {
              context.read<NavBarBloc>().addPages(v);
            },
          ),
        ),
      ),
    );
  }
}
