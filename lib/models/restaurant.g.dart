// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurants _$$_RestaurantsFromJson(Map<String, dynamic> json) =>
    _$_Restaurants(
      restaurant: (json['restaurants'] as List<dynamic>)
          .map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantsToJson(_$_Restaurants instance) =>
    <String, dynamic>{
      'restaurants': instance.restaurant,
    };

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      pictureId: json['pictureId'] as String,
      city: json['city'] as String,
      rating: (json['rating'] as num).toDouble(),
      menus: Menu.fromJson(json['menus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pictureId': instance.pictureId,
      'city': instance.city,
      'rating': instance.rating,
      'menus': instance.menus,
    };
