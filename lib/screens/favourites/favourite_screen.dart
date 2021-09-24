import 'package:flutter/material.dart';
import 'package:sab_app/widgets/custom_app_bar.dart';
import 'package:sab_app/widgets/custom_bottom_nav_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  static const String routeName = '/favourite';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => FavouriteScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Favourite',
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
