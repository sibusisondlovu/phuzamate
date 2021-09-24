import 'package:equatable/equatable.dart';

class DrinkModel extends Equatable {
  final int id;
  final String name;
  final String category;
  final String imageUrl;
  final double price;

  DrinkModel({required this.id, required this.name, required this.category, required this.imageUrl, required this.price});

  @override
  List<Object?> get props => [id, name, category, imageUrl, price];


  static List<DrinkModel> drinks = [
    DrinkModel(id: 1,
        name: 'Soweto Gold Lager',
        category: 'Beer',
        imageUrl: 'assets/images/drinks/soweto_gold_lager_can.jpg',
        price: 15.00),
    DrinkModel(id: 2,
        name: 'Amstel Radier',
        category: 'Beer',
        imageUrl: 'assets/images/drinks/amsetl_radier_can.jpg',
        price: 18.00),
    DrinkModel(id: 3,
        name: 'Amstel Lager',
        category: 'Beer',
        imageUrl: 'assets/images/drinks/amstel_lager_can.jpg',
        price: 20.00),
    DrinkModel(id: 4,
        name: 'Windhoek Draught',
        category: 'Beer',
        imageUrl: 'assets/images/drinks/windhoek_draught_can.jpg',
        price: 25.00),
    DrinkModel(id: 5,
        name: 'Hartenberg Doorkeeper Melot',
        category: 'Wine',
        imageUrl: 'assets/images/drinks/hartenberg_doorkeeper_merlot.jpg',
        price: 95.00),
    DrinkModel(id: 6,
        name: 'Darlin Cellars Chocoholic',
        category: 'Wine',
        imageUrl: 'assets/images/drinks/darlin_cellars_chocoholic.jpg',
        price: 65.00),
    DrinkModel(id: 7,
        name: '4th Street Sweet Red',
        category: 'Wine',
        imageUrl: 'assets/images/drinks/4th_street_sweet_red.jpg',
        price: 35.00),
    DrinkModel(id: 8,
        name: 'Boschendal Lanoy',
        category: 'Wine',
        imageUrl: 'assets/images/drinks/boschendal_lanoy.jpg',
        price: 79.00),
    DrinkModel(id: 9,
        name: 'Savana Light',
        category: 'Cider',
        imageUrl: 'assets/images/drinks/savana_light.jpg',
        price: 12.50),

    DrinkModel(id: 10,
        name: 'Hunters Gold',
        category: 'Cider',
        imageUrl: 'assets/images/drinks/hunters_gold.jpg',
        price: 13.00),
    DrinkModel(id: 11,
        name: 'Hunters Dry',
        category: 'Cider',
        imageUrl: 'assets/images/drinks/hunters_dry.jpg',
        price: 13.00),
    DrinkModel(id: 12,
        name: 'Strong Bow Gold',
        category: 'Cider',
        imageUrl: 'assets/images/drinks/strong_bow.jpg',
        price: 15.00),
    DrinkModel(id: 13,
        name: 'Viceroy Smooth Gold',
        category: 'Spirit',
        imageUrl: 'assets/images/drinks/viceroy_smooth_gold.jpg',
        price: 105.00),
    DrinkModel(id: 14,
        name: 'KWV 3 Yo Brandy',
        category: 'Spirit',
        imageUrl: 'assets/images/drinks/kwv_3_yo_brandy.jpg',
        price: 145.00),
    DrinkModel(id: 15,
        name: 'Klipdrift Export Brandy',
        category: 'Spirit',
        imageUrl: 'assets/images/drinks/klipdrift_export_brandy.jpg',
        price: 155.00),

  ];
}