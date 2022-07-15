import 'package:flutter/material.dart';

import 'modules/home/home_page.dart';
import 'modules/level_1/level_1_page.dart';

abstract class Routes {
  static const home = '/';
  static const level1 = '/level1';

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case level1:
        return MaterialPageRoute(
          builder: (context) => const Level1Page(),
        );

      default:
        throw Exception('No route found');
    }
  }
}
