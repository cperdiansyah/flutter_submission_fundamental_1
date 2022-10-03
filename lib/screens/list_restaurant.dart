import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/restaurant.dart';
import 'package:flutter_application_1/resources/colors.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/widgets/loading_lottie.dart';

class ListRestaurant extends StatefulWidget {
  const ListRestaurant({super.key});

  @override
  State<ListRestaurant> createState() => _ListRestaurantState();
}

class _ListRestaurantState extends State<ListRestaurant> {
  Widget _buildRestaurantItem(BuildContext context, Restaurant restaurant) {
    return ListTile(
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
      onTap: () {
        Navigator.pushNamed(context, restaurantDetailRoute,
            arguments: restaurant);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(24),
                      color: RestaurantAppColors.MCD_SECONDARY,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Hola...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Already feeling hungry?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Find Restaurant',
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color:
                                                RestaurantAppColors.MCD_PRIMARY,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FutureBuilder<String>(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/local_restaurant.json'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<Restaurant> restaurant =
                        parseRestaurants(snapshot.data);

                    return ListView.builder(
                        itemCount: restaurant.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return _buildRestaurantItem(
                              context, restaurant[index]);
                        });
                  } else if (snapshot.hasError) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 64.0),
                      child: Center(child: Text("Error Load Data")),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: LoadingView(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
