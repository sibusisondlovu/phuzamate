import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_event.dart';
import 'package:sab_app/blocs/favourite/favourite_state.dart';
import 'package:sab_app/models/drink_model.dart';
import 'package:sab_app/widgets/hero_home_carousel.dart';
import 'package:sab_app/widgets/widgets.dart';

class DrinkScreen extends StatelessWidget {
  final DrinkModel drink;
  const DrinkScreen({Key? key, required this.drink}) : super(key: key);

  static const String routeName = '/drink';

  static Route route({required DrinkModel drink}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => DrinkScreen(
              drink: drink,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: drink.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  )),
              BlocBuilder<FavouriteBloc, FavouriteState>(
                builder: (context, state) {
                  return IconButton(
                      onPressed: () {
                        context
                            .read<FavouriteBloc>()
                            .add(AddFavouriteDrink(drink));
                      },
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ));
                },
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text('ADD TO CART',
                      style: Theme.of(context).textTheme.headline3!))
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          HeroHomeCarousel(
            drink: drink,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          drink.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'R ' + drink.price.toStringAsFixed(2),
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
