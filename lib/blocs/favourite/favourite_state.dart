import 'package:equatable/equatable.dart';
import 'package:sab_app/models/favourite_model.dart';

abstract class FavouriteState extends Equatable{
  const FavouriteState();

  @override
  List<Object> get props => [];
}

class FavouriteLoading extends FavouriteState{}

class FavouriteLoaded extends FavouriteState{
  final Favourite favourite;

  const FavouriteLoaded({this.favourite = const Favourite()});

  @override
  List<Object> get props => [favourite];
}

class FavouriteError extends FavouriteState{}