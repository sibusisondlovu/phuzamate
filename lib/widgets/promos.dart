import 'package:flutter/material.dart';
import 'package:sab_app/models/promo_model.dart';

class Promo extends StatelessWidget {
  final PromoModel promo;

  const Promo({Key? key, required this.promo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: MediaQuery.of(context).size.width - 45,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(promo.imageUrl),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(5.0),
              color: Theme.of(context).primaryColor),
        ),
        ClipPath(
          clipper: PromoCustomClipper(),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width - 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 10, right: 125, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promo.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(promo.description,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PromoCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(225, size.height);
    path.lineTo(270, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

