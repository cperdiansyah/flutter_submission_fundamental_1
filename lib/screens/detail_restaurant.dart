import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/resources/colors.dart';

class DetailRestaurant extends StatelessWidget {
  final Restaurant restaurant;

  // const DetailRestaurant({super.key});
  const DetailRestaurant({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      tag: restaurant.name,
                      child: Image.network(restaurant.pictureId,
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          fit: BoxFit.cover),
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
                      padding: EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Icon(
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
                        child: Text(
                          restaurant.description,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ))
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
                      child: Row(children: [
                        Text("Foods : "),
                        Flexible(
                            child: Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: restaurant.menus.foods.length,
                            itemBuilder: (context, index) {
                              return Text(restaurant.menus.foods[index].name);
                            },
                          ),
                        ))
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Row(children: [
                        Text("Drinks : "),
                        Flexible(
                          child: Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: restaurant.menus.drinks.length,
                              itemBuilder: (context, index) {
                                return Text(
                                    restaurant.menus.drinks[index].name);
                              },
                            ),
                          ),
                        )
                      ]),
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
