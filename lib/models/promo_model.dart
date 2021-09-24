import 'package:equatable/equatable.dart';

class PromoModel extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  PromoModel(
      {required this.description,
      required this.id,
      required this.imageUrl,
      required this.title});

  @override
  List<Object?> get props => [id, description, imageUrl, title];

  static List<PromoModel> promos = [
    PromoModel(
        description: 'Place order of 3 or more hampers and get FREE DATA',
        id: 1,
        imageUrl: 'https://images.unsplash.com/photo-1487646709898-58d3c6e8d886?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        title: 'Free Delivery on your first order'),
    PromoModel(
        description: 'Get discount LOYALTY POINTS for your next purchase ',
        id: 1,
        imageUrl: 'https://images.unsplash.com/photo-1528733918455-5a59687cedf0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80',
        title: '20% on loyalty points'),
  ];
}
