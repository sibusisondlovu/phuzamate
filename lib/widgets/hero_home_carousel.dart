import 'package:flutter/material.dart';
import 'package:sab_app/models/category_model.dart';
import 'package:sab_app/models/drink_model.dart';

class HeroHomeCarousel extends StatelessWidget {

  final Category? category;
  final DrinkModel? drink;
  const HeroHomeCarousel({Key? key, this.category, this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/catalog', arguments: category);
        // if (this.drink == null) {
        //   Navigator.pushNamed(context, '/catalog', arguments: category);
        // }
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(
                    drink == null ? category!.image: drink!.imageUrl, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      drink == null ?  category!.name: drink!.name,
                      style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
