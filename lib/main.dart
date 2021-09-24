import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_bloc.dart';
import 'package:sab_app/blocs/favourite/favourite_event.dart';
import 'package:sab_app/config/app_router.dart';
import 'package:sab_app/config/app_theme.dart';
import 'package:sab_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> FavouriteBloc()..add(StartFavourite()))
      ],
      child: MaterialApp(
        title: 'Booze',
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        onGenerateRoute: AppRouter.onGeneratedRoute,
        initialRoute: HomeScreen.routeName,

      ),
    );
  }
}

