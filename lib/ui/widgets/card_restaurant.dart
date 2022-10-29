import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/ui/screens/pages.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CardRestaurant extends StatelessWidget {
  const CardRestaurant({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseProvider>(builder: (context, provider, child) {
      return FutureBuilder<bool>(
        future: provider.isFavorited(restaurant.id),
        builder: (context, snapshot) {
          var isFavorited = snapshot.data ?? false;
          return Material(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  'https://restaurant-api.dicoding.dev/images/small/${restaurant.pictureId}',
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
                        color: greyColor1,
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
                        color: greyColor1,
                        size: 18,
                      ),
                      Text(restaurant.rating.toString())
                    ],
                  )
                ],
              ),
              trailing: isFavorited
                  ? IconButton(
                      icon: const Icon(Icons.favorite),
                      color: Theme.of(context).colorScheme.secondary,
                      onPressed: () => provider.removeFavorite(restaurant.id),
                    )
                  : IconButton(
                      icon: const Icon(Icons.favorite_border),
                      color: Theme.of(context).colorScheme.secondary,
                      onPressed: () => provider.addFavorite(restaurant),
                    ),
              onTap: () {
                Get.to(() => RestaurantDetailScreen(), arguments: this.restaurant.id);
              },
            ),
          );
        },
      );
    });
  }
}
