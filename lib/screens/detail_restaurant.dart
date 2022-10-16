import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:readmore/readmore.dart';

class DetailRestaurant extends StatelessWidget {
  final Restaurant restaurant;

  // const DetailRestaurant({super.key});
  const DetailRestaurant({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(restaurant);
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Image
                Stack(
                  children: <Widget>[
                    Hero(
                      tag: restaurant.pictureId,
                      child: Image.network(
                        'https://restaurant-api.dicoding.dev/images/medium/${restaurant.pictureId}',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Text('Your error widget...');
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black38,
                                    radius: 20,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    restaurant.name,
                                    style: TextStyle(
                                      fontSize: 31,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            RestaurantAppColors.MCD_SECONDARY,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        restaurant.rating.toString(),
                                        style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Description
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: RestaurantAppColors.GREY_COLOR_1,
                            size: 31,
                          ),
                          Text(
                            restaurant.city,
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ReadMoreText(
                        restaurant.description,
                        trimLines: 5,
                        colorClickableText: RestaurantAppColors.MCD_PRIMARY,
                        trimMode: TrimMode.Length,
                        trimCollapsedText: 'Show More',
                        trimExpandedText: 'Show less',
                        moreStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: RestaurantAppColors.MCD_PRIMARY),
                        lessStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: RestaurantAppColors.MCD_PRIMARY),
                      ),
                    ),
                  ],
                ),
                // Menus

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Text(
                            "Menus :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Text("Foods : "),
                          // Flexible(
                          //   child: Container(
                          //     child: ListView.builder(
                          //       shrinkWrap: true,
                          //       itemCount: restaurant.menus.foods.length,
                          //       itemBuilder: (context, index) {
                          //         return Text(restaurant.menus.foods[index].name);
                          //       },
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Text("Drinks : "),
                          // Flexible(
                          //   child: Container(
                          //     child: ListView.builder(
                          //       shrinkWrap: true,
                          //       itemCount: restaurant.menus.drinks.length,
                          //       itemBuilder: (context, index) {
                          //         return Text(
                          //             restaurant.menus.drinks[index].name);
                          //       },
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
