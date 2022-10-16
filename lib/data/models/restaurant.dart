// ignore_for_file: invalid_annotation_target
import 'package:flutter_application_1/data/models/menu.dart';
import 'package:flutter_application_1/data/models/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurants with _$Restaurants {
  const factory Restaurants({
    @JsonKey(name: 'restaurants') required List<Restaurant> restaurant,
  }) = _Restaurants;

  factory Restaurants.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsFromJson(json);
}

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant(
          {required String id,
          required String name,
          required String description,
          required String pictureId,
          required String city,
          required double rating,
          @JsonKey(name: 'menus') Menu? menus,
          @JsonKey(name: 'customerReviews') CostumerReviews? reviews}) =
      _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}
