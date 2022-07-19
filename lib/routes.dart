import 'package:dna/modules/auth/auth_controller.dart';
import 'package:dna/modules/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/home/home_page.dart';
import 'modules/level_1/level_1_page.dart';

abstract class Routes {
  static const auth = '/';
  static const home = '/home';
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

      case auth:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => AuthController(context),
            child: const AuthPage(),
          ),
        );

      default:
        throw Exception('No route found');
    }
  }
}
