import 'dart:convert';

import 'package:flutter_application_1/models/menu.dart';

Restaurants restaurantsFromJson(String str) =>
    Restaurants.fromJson(json.decode(str));

String restaurantsToJson(Restaurants data) => json.encode(data.toJson());

class Restaurants {
  Restaurants({
    required this.restaurants,
  });

  List<Restaurant> restaurants;

  factory Restaurants.fromJson(Map<String, dynamic> json) => Restaurants(
        restaurants: List<Restaurant>.from(
            json["restaurants"].map((x) => Restaurant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
      };
}

class Restaurant {
  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menus,
  });

  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  Menus menus;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"].toDouble(),
        menus: Menus.fromJson(json["menus"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
        "menus": menus.toJson(),
      };
}

List<Restaurant> parseRestaurants(String? json) {
  if (json == null) {
    return [];
  }

  final Map<String, dynamic> parsed = jsonDecode(json);
  List<dynamic> restaurants = parsed['restaurants'];
  return restaurants.map((json) => Restaurant.fromJson(json)).toList();
}
