import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sab_app/models/category_model.dart';
import 'package:sab_app/models/drink_model.dart';
import 'package:sab_app/models/promo_model.dart';
import 'package:sab_app/widgets/custom_app_bar.dart';
import 'package:sab_app/widgets/custom_bottom_nav_bar.dart';
import 'package:sab_app/widgets/drink_card.dart';
import 'package:sab_app/widgets/hero_home_carousel.dart';
import 'package:sab_app/widgets/promos.dart';
import 'package:sab_app/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Phuza Mate',
      ),
      bottomNavigationBar: CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                initialPage: 2,
                autoPlay: true,
              ),
              items: Category.categories
                  .map((category) => HeroHomeCarousel(category: category))
                  .toList(),
            )),
            SectionTitle(
              title: 'SPECIALS NEAR ME',
            ),
           // DrinkCard(drink: DrinkModel.drinks[12],)

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(

                height: 165,
                child: ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DrinkModel.drinks.length,
                    itemBuilder: (context, index){
                      return Padding(padding: EdgeInsets.only(right: 5),
                      child: DrinkCard(drink: DrinkModel.drinks[index],isFavourite: false,),);
                    }),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: PromoModel.promos.length,
                    itemBuilder: (context,index){
                      return  Promo(promo:PromoModel.promos[index] ,);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
