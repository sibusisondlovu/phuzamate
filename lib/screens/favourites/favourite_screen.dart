import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_state.dart';
import 'package:sab_app/models/drink_model.dart';
import 'package:sab_app/widgets/custom_app_bar.dart';
import 'package:sab_app/widgets/custom_bottom_nav_bar.dart';
import 'package:sab_app/widgets/drink_card.dart';

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
      body: BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (context,state){
          if (state is FavouriteLoading) {
            return Center(
              child: SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                ),
              ),
            );
          }

          if (state is FavouriteLoaded) {
            return Container(
              child: GridView.builder(
                  itemCount: state.favourite.drinks.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 2.2
                  ),
                  itemBuilder: (context, index) {
                    return Center(child: DrinkCard(drink:state.favourite.drinks[index],withFactor: 1.1,isFavourite: true,));
                  }),
            );
          }else{
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
