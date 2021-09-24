import 'package:flutter/material.dart';
import 'package:sab_app/widgets/widgets.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({Key? key}) : super(key: key);

  static const String routeName = '/drink';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => DrinkScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Drink',
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
