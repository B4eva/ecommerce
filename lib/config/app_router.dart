import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('this is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return HomeScreen.route();
      case '/profile':
        return HomeScreen.route();
      case '/wishlist':
        return WhishListScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}
