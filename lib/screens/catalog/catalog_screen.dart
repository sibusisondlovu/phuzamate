import 'package:flutter/material.dart';
import 'package:sab_app/models/category_model.dart';
import 'package:sab_app/models/drink_model.dart';
import 'package:sab_app/widgets/drink_card.dart';
import 'package:sab_app/widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';
  final Category category;

  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  @override
  Widget build(BuildContext context) {
    final List<DrinkModel> drinks = DrinkModel.drinks
        .where((drink) => drink.category == category.name)
        .toList();

    return Scaffold(
        appBar: CustomAppBar(
          title: category.name,
        ),
        bottomNavigationBar: CustomBottomNavBar(),
        body: GridView.builder(
            itemCount: drinks.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DrinkCard(drink: drinks[index], withFactor: 2.2,),
              );
            }));
  }
}
