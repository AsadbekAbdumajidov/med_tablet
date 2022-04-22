import 'package:bloc/bloc.dart';
import 'package:medic/cubit/state.dart';
import 'package:medic/screens/tabs/cart/cart.dart';
import 'package:medic/screens/tabs/categories/categories.dart';
import 'package:medic/screens/tabs/favorites/favorites.dart';
import 'package:medic/screens/tabs/home/home.dart';
import 'package:medic/screens/tabs/profile/profile.dart';

class NavBarBloc extends Cubit<TabletState> {
  NavBarBloc() : super(TabletInitial());
  final List pages = const [
    Home(),
    Categories(),
    Cart(),
    Favorites(),
    Profile(),
  ];
  int currentIndex = 0;

  void addPages(v) {
    currentIndex = v;
    emit(ButtomState());
  }

 
}
