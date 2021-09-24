import 'package:flutter/material.dart';
import 'package:sab_app/models/drink_model.dart';

class DrinkCard extends StatelessWidget {
  final DrinkModel drink;
  final double withFactor;
  final bool isFavourite;
  const DrinkCard(
      {Key? key,
      required this.drink,
      this.withFactor = 2.5,
      this.isFavourite = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / withFactor,
          height: 150,
          child: Image.asset(
            drink.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width / withFactor,
            height: 150,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 80,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / withFactor - 10,
            height: 55,
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          drink.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                        isFavourite == false? Text(
                          'R ' + drink.price.toStringAsFixed(2),
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ):Container()
                      ],
                    ),
                  ),
                  isFavourite == false? Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/drink',
                              arguments: drink);
                        },
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        )),
                  ):
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/drink',
                              arguments: drink);
                        },
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
