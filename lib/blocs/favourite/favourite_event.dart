import 'package:equatable/equatable.dart';
import 'package:sab_app/models/drink_model.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();
  @override
  List<Object> get props => [];
}

class StartFavourite extends FavouriteEvent{

}

class AddFavouriteDrink extends FavouriteEvent {
  final DrinkModel drink;

  const AddFavouriteDrink(this.drink);
  @override
  List<Object> get props => [drink];
}

class RemoveFavouriteDrink extends FavouriteEvent {
  final DrinkModel drink;

  const RemoveFavouriteDrink(this.drink);
  @override
  List<Object> get props => [drink];
}