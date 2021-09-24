

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sab_app/helpers/app_colors.dart';
import 'package:sab_app/helpers/utils.dart';
import 'package:sab_app/models/item_model.dart';
import 'package:sab_app/widgets/theme_button.dart';

class SpecialsPage extends StatefulWidget {
  const SpecialsPage({Key? key}) : super(key: key);

  @override
  _SpecialsPageState createState() => _SpecialsPageState();
}

class _SpecialsPageState extends State<SpecialsPage> {

  List<Item> specialsItems = Utils.getMockedSpecials();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          title: Text('SAB'),
          actions: [
            Icon(Icons.notification_important),
            SizedBox(width: 10,),
            Icon(Icons.shopping_basket),
            SizedBox(width: 5,)
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Specials Near Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
              ),
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: specialsItems.length,
                    itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/specials/'+specialsItems[index].image),
                            Text(specialsItems[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                            Text(specialsItems[index].description),
                            Text(specialsItems[index].category),
                            Text('R ' + specialsItems[index].price.toString(),
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),),
                            ThemeButton(
                              label: 'ADD TO BASKET',
                              icon: Icon(Icons.shopping_basket, color: Colors.white),
                              onClick: () {
                               // Utils.mainAppNav.currentState!.pushNamed('/mappage');
                              },
                              color: AppColors.MAIN_COLOR,
                              highlight: AppColors.GOLD,
                            )
                          ],
                        ),
                      ),
                    );
                    }
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/ads/default_ad.jpg',
                  height: 150,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,),
              )
            ],
          ),
        ));
  }
}
