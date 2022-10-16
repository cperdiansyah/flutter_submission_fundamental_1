import 'package:flutter_application_1/data/models/restaurant.dart';

class RestaurantListResponse {
  bool? error;
  String? message;
  int? count;
  List<Restaurant>? restaurants;

  RestaurantListResponse(
      {this.error, this.message, this.count, this.restaurants});

  RestaurantListResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    count = json['count'];
    if (json['restaurants'] != null) {
      restaurants = <Restaurant>[];
      json['restaurants'].forEach((v) {
        restaurants!.add(Restaurant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    data['count'] = count;
    if (restaurants != null) {
      data['restaurants'] = restaurants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
