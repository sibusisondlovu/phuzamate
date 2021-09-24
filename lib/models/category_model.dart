import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String image;

  Category({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];

  static List<Category> categories = [
    Category(
        id: 1,
        name: 'Beer',
        image: 'assets/images/categories/beer.png'),
    Category(
        id: 2,
        name: 'Ciders',
        image: 'assets/images/categories/sider.png'),
    Category(
        id: 3,
        name: 'Spirits',
        image: 'assets/images/categories/spirits.png'),
    Category(
        id: 4,
        name: 'Wine',
        image: 'assets/images/categories/wines.png'),
  ];
}
