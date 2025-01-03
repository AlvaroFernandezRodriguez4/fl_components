import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const intialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.house_rounded,
        name: 'HomeScreen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.castle,
        name: 'Casas Juego de Tronos',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.house_rounded,
        name: 'ListView 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.house_rounded,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.house_rounded,
        name: 'Cards (Tarjetas)',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.person,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.person,
        name: 'Animated Container',
        screen: const AnimatedScreen()),     
    MenuOption(
      route: 'inputs', 
      icon: Icons.input_rounded, 
      name: 'Forms: Inputs', 
      screen: const InputsScreen()),
    MenuOption(
      route: 'slider', 
      icon: Icons.arrow_back_ios_new, 
      name: 'Slider', 
      screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
