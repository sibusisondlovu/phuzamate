import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sab_app/models/category_model.dart';
import 'package:sab_app/models/drink_model.dart';
import 'package:sab_app/screens/cart/cart_screen.dart';
import 'package:sab_app/screens/catalog/catalog_screen.dart';
import 'package:sab_app/screens/drink/drink_screen.dart';
import 'package:sab_app/screens/favourites/favourite_screen.dart';
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
      case '/drink':
        return DrinkScreen.route(drink:settings.arguments as DrinkModel);
      case '/catalog':
        return CatalogScreen.route(category: settings.arguments as Category);
      case '/favourite':
        return FavouriteScreen.route();
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