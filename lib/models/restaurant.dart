import 'dart:convert';
/*
 class Restaurant {
//   late String id;
//   late String name;
//   late String description;
//   late String pictureId;
//   late String city;
//   late double rating;
//   late Menus menus;
//   Restaurant({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.pictureId,
//     required this.city,
//     required this.rating,
//     required this.menus,
//   });
//   Restaurant.fromJson(
//     Map<String, dynamic> restaurant,
//   ) {
//     id = restaurant['id']; // restaurant['keyJSON']
//     name = restaurant['name'];
//     description = restaurant['description'];
//     pictureId = restaurant['pictureId'];
//     city = restaurant['city'];
//     rating = double.parse(restaurant['rating'].toString());
//     Map<String, dynamic> menusJson = restaurant['menus'];
//     List<dynamic> foods = menusJson['foods'];
//     List<dynamic> drinks = menusJson['drinks'];
//     menus = Menus(
//       foods: foods.map((e) => '${e['name']}').toList(),
//       drinks: drinks.map((e) => '${e['name']}').toList(),
//     );
//   }
// }

class Menus {
  late List<String> foods;
   late List<String> drinks;
   Menus({required this.foods, required this.drinks});
 }

 List<Restaurant> parseRestaurants(String? json) {
   if (json == null) {
     return [];
   }

   final Map<String, dynamic> parsed = jsonDecode(json);
   List<dynamic> restaurants = parsed['restaurants'];
   return restaurants.map((json) => Restaurant.fromJson(json)).toList();
 }

 To parse this JSON data, do

     final restaurants = restaurantsFromJson(jsonString); */

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
  print(json);
  if (json == null) {
    return [];
  }

  final Map<String, dynamic> parsed = jsonDecode(json);
  List<dynamic> restaurants = parsed['restaurants'];
  return restaurants.map((json) => Restaurant.fromJson(json)).toList();
}

class Menus {
  Menus({
    required this.foods,
    required this.drinks,
  });

  List<Drink> foods;
  List<Drink> drinks;

  factory Menus.fromJson(Map<String, dynamic> json) => Menus(
        foods: List<Drink>.from(json["foods"].map((x) => Drink.fromJson(x))),
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}

class Drink {
  Drink({
    required this.name,
  });

  String name;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
