import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/resources/colors.dart';

class CardRestaurant extends StatelessWidget {
  const CardRestaurant({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: RestaurantAppColors.ACCENT_COLOR,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.network(
            restaurant.pictureId,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(restaurant.name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: RestaurantAppColors.GREY_COLOR_1,
                  size: 21,
                ),
                Text(
                  restaurant.city,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: RestaurantAppColors.GREY_COLOR_1,
                  size: 18,
                ),
                Text(restaurant.rating.toString())
              ],
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
