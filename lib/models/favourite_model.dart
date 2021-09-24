import 'package:equatable/equatable.dart';
import 'package:sab_app/models/drink_model.dart';

class Favourite extends Equatable {

  final List<DrinkModel> drinks;

  const Favourite({this.drinks = const<DrinkModel>[]});

  @override
  List<Object?> get props => [drinks];

}