import 'package:flutter/material.dart';
import 'package:tech_taste/model/restaurant_model.dart';

class RestaurantWidget extends StatelessWidget {
  final RestaurantModel restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Image.asset(
          'assets/images/${restaurant.imagePath.toString()}',
          width: 64,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(restaurant.name),
            Row(
              children: List.generate(restaurant.stars.toInt(), (index) {
                return Icon(Icons.star, color: Colors.yellow, size: 16,);
              }),
            ),
            Text('${restaurant.distance} km'),
          ],
        ),
      ],
    );
  }
}
