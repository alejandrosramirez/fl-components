import 'package:flutter/material.dart';

// own
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      name: 'Listview 1',
      screen: const Listview1Screen(),
      icon: Icons.list_outlined,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview 2',
      screen: const Listview2Screen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_giftcard_rounded,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Inputs y Forms',
      screen: const InputsScreen(),
      icon: Icons.input_outlined,
    ),
    MenuOption(
      route: 'slider',
      name: 'Sliders and Checks',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_outlined,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'Infinite scroll and pull to refresh',
      screen: const ListviewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
