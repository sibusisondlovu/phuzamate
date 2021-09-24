import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sab_app/screens/cart/cart_screen.dart';
import 'package:sab_app/screens/home/home_screen.dart';
import 'package:sab_app/screens/profile/profile_screen.dart';

class AppRouter {
  static Route onGeneratedRoute(RouteSettings settings) {
    print ('This is the route: ' + settings.name.toString());

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/profile':
        return ProfileScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute(){
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
        ));
  }
}