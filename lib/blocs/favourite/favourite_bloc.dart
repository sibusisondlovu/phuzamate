import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_event.dart';
import 'package:sab_app/blocs/favourite/favourite_state.dart';
import 'package:sab_app/models/favourite_model.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteLoading());

  @override
  Stream<FavouriteState> mapEventToState(FavouriteEvent event) async* {
    if (event is StartFavourite) {
      yield* _mapStartFavouriteToState();
    } else if (event is AddFavouriteDrink) {
      yield* _mapAddFavouriteDrinkToState(event, state);
    } else if (event is RemoveFavouriteDrink) {
      yield* _mapRemoveFavouriteDrinkToState(event, state);
    }
  }

  Stream<FavouriteState> _mapStartFavouriteToState() async* {
    yield FavouriteLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      yield const FavouriteLoaded();
    } catch (_) {}
  }

  Stream<FavouriteState> _mapAddFavouriteDrinkToState(
      AddFavouriteDrink event, FavouriteState state) async* {
    if (state is FavouriteLoaded) {
      try {
        yield FavouriteLoaded(
            favourite: Favourite(
                drinks: List.from(state.favourite.drinks)..remove(event.drink)));
      } catch (_) {}
    }
  }

  Stream<FavouriteState> _mapRemoveFavouriteDrinkToState(
      RemoveFavouriteDrink event, FavouriteState state) async* {
    if (state is FavouriteLoaded) {
      try {
        yield FavouriteLoaded(
            favourite: Favourite(
                drinks: List.from(state.favourite.drinks)..add(event.drink)));
      } catch (_) {}
    }
  }
}
