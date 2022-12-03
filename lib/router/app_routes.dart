/* esto lo podemos hacer para tener una rota de forma global */
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    //todo borrar home

    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'List View1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'List View2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.warning,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_arrow_outlined,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'inputScreens',
        icon: Icons.monitor,
        name: 'Input Screens',
        screen: const InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

/*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
